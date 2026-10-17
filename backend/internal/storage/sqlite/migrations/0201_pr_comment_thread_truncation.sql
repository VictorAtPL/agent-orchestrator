-- +goose Up
-- +goose StatementBegin
ALTER TABLE pr_comment
    ADD COLUMN comments_total_count INTEGER NOT NULL DEFAULT 0;
-- +goose StatementEnd

-- +goose StatementBegin
ALTER TABLE pr_comment
    ADD COLUMN comments_truncated INTEGER NOT NULL DEFAULT 0;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE pr_comment DROP COLUMN comments_truncated;
-- +goose StatementEnd

-- +goose StatementBegin
ALTER TABLE pr_comment DROP COLUMN comments_total_count;
-- +goose StatementEnd
