import Lake
open Lake DSL

package «SIDE-trivium» where
  -- Settings applied to both builds and interactive editing
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩, -- pretty-print fun as ↦
    ⟨`autoImplicit, false⟩
  ]
  -- These are additional options applied only when building targets
  moreServerOptions := #[
    ⟨`autoImplicit, false⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "de5ce8a9a66a4aa68a9bdbb35b63a06d34d9ca11"

@[default_target]
lean_lib «Trivium» where
  -- Add library configuration options here
