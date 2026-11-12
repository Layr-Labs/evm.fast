import InitECandidate.Solver.MemSafe.Dn.Cfg
import InitECandidate.Solver.Band3.All

set_option autoImplicit false

/-!
# `set_storage`'s summary: the one open hypothesis of `op_sstore` (sonnet-store3)

`set_storage` is NOT accepted by the checker over `tab26`: `htab_get(outer, addr)` returns an `any`
word, but the two `jset` calls need header-typed pointers (`fits (ptr tHTh32)`); that needs a typed
`htab_get` (a hand proof, the `HgRet`/`hg_leafVal` facts of `HtabEntries/JGet.lean`). The key must be
a 32-byte buffer (`jset` on `tHTh32` keys), not `buf 20` as in `Sigs3`.
-/

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

def ssSig : Sig := ⟨[.buf 20, .buf 32, .any], [], [Hooks.gJn], true⟩

def ssCaps : List Cap :=
  [⟨nm "journal", 9, [], true⟩, ⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩,
    ⟨nm "*", 11, [], true⟩, ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩,
    ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩, ⟨nm "*", 12, [], true⟩, ⟨nm "sk_buf", 24, [], false⟩]

/-- **Open hypothesis**: `set_storage`'s capability summary. -/
def SetStorageSumm (σ : Type) : Prop :=
  CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "set_storage") ssSig ssCaps

end InitECandidate.Solver.MemSafe.Stor3
