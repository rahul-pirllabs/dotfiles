return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<C-b-h>",  "<cmd>TmuxNavigateLeft<cr>" },
        { "<C-b-j>",  "<cmd>TmuxNavigateDown<cr>" },
        { "<C-b-k>",  "<cmd>TmuxNavigateUp<cr>" },
        { "<C-b-l>",  "<cmd>TmuxNavigateRight<cr>" },
        { "<C-b-\\>", "<cmd>TmuxNavigatePrevious<cr>" },
    },
}
