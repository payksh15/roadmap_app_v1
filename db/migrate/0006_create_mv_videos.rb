class CreateMvVideos < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      CREATE MATERIALIZED VIEW mv_videos AS
        SELECT
          videos.id, videos.name, videos.aspect_ratio, videos.resolution, videos.created_at, genres.name as genres
        FROM
          videos
        INNER JOIN
          genres
        ON
          genres.id = genre_id
        ORDER BY
          videos.id;
    SQL

  end

  def self.down
    execute <<-SQL
      DROP MATERIALIZED VIEW IF EXISTS mv_videos
    SQL
  end
end
