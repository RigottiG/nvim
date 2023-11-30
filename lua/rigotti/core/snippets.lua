local ls = require("luasnip")

-- Snippet definition
local snippet = ls.s

-- Text node
local text = ls.text_node
-- Insert node (where the cursor jumps to)
local insert = ls.insert_node
-- Dynamic node
local dynamic = ls.dynamic_node

-- Define snippets for each filetype
return {
  all = { -- snippets available in all filetypes
    snippet("trigger", text("Snippet body")),
  },
  lua = { -- snippets specifically for Lua
    snippet("func", {
      text("function "),
      insert(1, "name"),
      text("()"),
      insert(0),
    }),
  },
  typescriptreact = { -- snippets for TypeScript React
    -- Functional Component
    snippet("rfc", {}),
    -- useState Hook
    snippet("useState", {
      text("const ["),
      insert(1, "state"),
      text(", "),
      insert(2, "setState"),
      text("] = useState<"),
      insert(3, "Type"),
      text(">("),
      insert(4, "initialValue"),
      text(");"),
    }),
    -- useEffect Hook
    snippet("useEffect", {
      text({ "useEffect(() => {", "  " }),
      insert(1),
      text({ "", "}, [", "  " }),
      insert(2),
      text({ "", "]);" }),
    }),
  },
  -- Add other filetypes as needed
}
