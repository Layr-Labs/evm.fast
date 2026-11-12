import InitECandidate.Solver.MemSafe.D0.Code
import InitECandidate.Solver.MemSafe.Frames.ProJL

/-!
# `depth0_prepare`'s hypotheses on the transaction environment `te` and on `recover_authority`

* `TeFacts` / `TeHook`: the (staged) read-only record type `tE` of the transaction environment
  `te = msg[8]` (`fork.pnk` writes it completely before `st m + MSG_TE, te` and never again).
  The hook is a hypothesis on `G`, like `NHook` in `Ins/Defs.lean`, until the config stage makes
  `msg[8]` a `ptr tTE` slot.
* `AuthArg`, `RaQ`, `RaH`: `recover_authority`'s summary, taken as a hypothesis.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- What `set_delegation` reads from `te`: the origin address block (`TE_ORIGIN`, 0) is a `buf 20`,
and the authorization array (`TE_AUTHS` 144, `TE_AUTHS_N` 152) is a `tAUTH` array. -/
def TeFacts (Γ : Gam) (p : Ptrs) (m : Mem) (x : Obj) : Prop :=
  BufOK guestC Γ p (rd m x.base).toNat 20 ∧
  Hooks.SubArr Γ (rd m (x.base + BitVec.ofNat 64 144)) (rd m (x.base + BitVec.ofNat 64 152)).toNat
    tAUTH 120

/-- The staged hook for the read-only `te` record type `tE`. -/
structure TeHook (σ : Type) (tE : Nat) : Prop where
  heap : (guestC.ty tE).region = .heap
  msg : ∀ (Γ : Gam) (s : State σ), G guestC (Hooks.guestHooksR (σ := σ)) Γ s → ∀ o ∈ Γ,
    (o.ty = tMSGh ∨ o.ty = tMSGs) → ∃ x ∈ Γ, x.base = rd s.memory (o.base + BitVec.ofNat 64 8) ∧
      x.ty = tE
  wf : ∀ (Γ : Gam) (s : State σ) (p : Ptrs), G guestC (Hooks.guestHooksR (σ := σ)) Γ s →
    ptrsOf s = some p → ∀ x ∈ Γ, x.ty = tE → TeFacts Γ p s.memory x

/-- `recover_authority`'s argument is a `tAUTH` record (an element of a `tAUTH` array). -/
def AuthArg (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ a : BitVec 64, vs = [.val (.word a)] ∧ ∃ x ∈ Γ, x.ty = tAUTH ∧ x.lo ≤ a.toNat ∧
    a.toNat + 120 ≤ x.hi

/-- `recover_authority`'s post: a returned word is `0` or a `buf 20` block. -/
def RaQ (_ : List (ValueHOL 64)) (_ : State σ) (_ : Gam) (r : PanSemResultExact 64) (t : State σ)
    (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ∃ w : BitVec 64, v = .val (.word w) ∧
    (w = 0 ∨ ∀ p', ptrsOf t = some p' → BufOK guestC Γ' p' w.toNat 20)

/-- **`recover_authority`'s summary** (taken as a hypothesis; proved elsewhere). No `prot`
cell and no state cell is written (`PW = False`), no global grows. -/
def RaH (σ : Type) : Prop :=
  SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "recover_authority")
    ⟨[.any], [], [], true⟩ AuthArg (fun _ _ _ _ => False) RaQ

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.TeHook
#print axioms InitECandidate.Solver.MemSafe.D0.RaH
