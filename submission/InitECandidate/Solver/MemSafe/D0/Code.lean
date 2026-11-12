import InitECandidate.Solver.MemSafe.Frames.PmRoot
import InitECandidate.Solver.MemSafe.Frames.ProCode

/-!
# `depth0_prepare`, `set_delegation`, `prepare_dispatch`, `recover_authority`: the code (sonnet-d0)

The bodies are the guest's own translated bodies (`fnEntry`), kept as projections so that the
proof sees exactly the checked term; `code_*` is `guestCode (nm "f") = some ([], body, .one)`
(`recover_authority` takes the parameter `auth`). Indices in `Guest.Software.guestAst`:
`recover_authority` 572, `set_delegation` 575, `prepare_dispatch` 576, `depth0_prepare` 587.

Also `scCaps` / `SetCodeH` (the statement main discharges).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- `set_code`'s capabilities in the fold (`ShardsJ2.tab26`). -/
def scCaps : List Cap :=
  [⟨nm "journal", 9, [], true⟩, ⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩,
    ⟨nm "*", 11, [], true⟩, ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩,
    ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩, ⟨nm "*", 12, [], true⟩, ⟨nm "sk_buf", 24, [], false⟩]

/-- **`set_code`'s summary** (the hand proof in progress elsewhere; main discharges it). -/
def SetCodeH (σ : Type) : Prop :=
  SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "set_code")
    ⟨[.buf 20, .any, .any], [], [Hooks.gJn], true⟩
    (fun vs s Γ => ReqOK scCaps s Γ ∧ (∃ n : BitVec 64, vs[2]? = some (.val (.word n)) ∧ n.toNat ≤ 2 ^ 32))
    (fun _ s Γ a => CapPW scCaps s Γ a) (fun _ _ _ _ _ _ => True)

/-- The guest's translated bodies. -/
def sdBody : ProgHOL 64 := (fnEntry Guest.Software.guestFn_set_delegation).2.2.1
def pdBody : ProgHOL 64 := (fnEntry Guest.Software.guestFn_prepare_dispatch).2.2.1
def d0Body : ProgHOL 64 := (fnEntry Guest.Software.guestFn_depth0_prepare).2.2.1
def raBody : ProgHOL 64 := (fnEntry Guest.Software.guestFn_recover_authority).2.2.1

theorem entry_sd : fnEntry Guest.Software.guestFn_set_delegation =
    (nm "set_delegation", [], sdBody, .one) := by
  conv => lhs; cbv
  conv => rhs; unfold sdBody; cbv
  all_goals rfl

theorem entry_pd : fnEntry Guest.Software.guestFn_prepare_dispatch =
    (nm "prepare_dispatch", [], pdBody, .one) := by
  conv => lhs; cbv
  conv => rhs; unfold pdBody; cbv
  all_goals rfl

theorem entry_d0 : fnEntry Guest.Software.guestFn_depth0_prepare =
    (nm "depth0_prepare", [], d0Body, .one) := by
  conv => lhs; cbv
  conv => rhs; unfold d0Body; cbv
  all_goals rfl

theorem entry_ra : fnEntry Guest.Software.guestFn_recover_authority =
    (nm "recover_authority", [(nm "auth", .one)], raBody, .one) := by
  conv => lhs; cbv
  conv => rhs; unfold raBody; cbv
  all_goals rfl

theorem code_sd : guestCode (nm "set_delegation") = some ([], sdBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 575) (by decide)) ⟨_, rfl⟩
    entry_sd

theorem code_pd : guestCode (nm "prepare_dispatch") = some ([], pdBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 576) (by decide)) ⟨_, rfl⟩
    entry_pd

theorem code_d0 : guestCode (nm "depth0_prepare") = some ([], d0Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 587) (by decide)) ⟨_, rfl⟩
    entry_d0

theorem code_ra : guestCode (nm "recover_authority") =
    some ([(nm "auth", .one)], raBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 572) (by decide)) ⟨_, rfl⟩
    entry_ra

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.code_sd
#print axioms InitECandidate.Solver.MemSafe.D0.code_pd
#print axioms InitECandidate.Solver.MemSafe.D0.code_d0
#print axioms InitECandidate.Solver.MemSafe.D0.code_ra
