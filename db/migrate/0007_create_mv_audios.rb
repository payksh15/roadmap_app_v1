class CreateMvAudios < ActiveRecord::Migration
  def self.up
    execute <<-SQL
      CREATE MATERIALIZED VIEW mv_audios AS
        SELECT
          audios.id, audios.name, audios.bit_depth, audios.created_at, genres.name as genres
        FROM
          audios
        INNER JOIN
          genres
        ON
          genres.id = genre_id
        ORDER BY
          audios.id;
    SQL
  end

  def self.down
    execute <<-SQL
      DROP MATERIALIZED VIEW IF EXISTS mv_audios;
    SQL
  end
end
