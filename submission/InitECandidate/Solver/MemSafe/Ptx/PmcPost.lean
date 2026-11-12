import InitECandidate.Solver.MemSafe.Ptx.Tgt

/-!
# F3: the post of `process_message_call` (definitions)

`PmcFin Γe se out t`: on a return, `out` is the output record, a `tMCO` object of `Γ'` (size at least 96),
`G Γ' t`, `KeepH guestC Γe Γ' se t`, `BKeep guestC Γe se t` (from the entry typing `Γe` and entry state `se`),
`ev` / `cur_cont` small, and either

* the collision path (`OutCol`): marks 0, `out[MCO_ERROR] = E_ADDRESS_COLLISION ≠ 0`, `out[8]`, `out[16]`, `out[24]` zero; or
* a child (`OutChild`): `MarkVals` of `out[80]`, `out[88]`; `error ≠ 0 →` fields 8 / 16 / 24 zero;
  `error = 0 →` `out[16]` is a `tLSTs`-style list header (`LstObj`, element size 8) of `Γ'` with every log record
  in `[heapBase, hp)` and outside `Γ'` (`RecsBelow`), and `out[24]` is a `tHTs20` table (`DelObj`) of `Γ'`.

`HypPcm σ M`: the post of `process_create_message`, in the form of `PmRL` (package F3c proves it).
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- `process_create_message`'s value relation: `PmRL` with the create target `TgtB` in the
precondition (package F3m: `create_finish`'s `CfOK` comes from it, not from the `EV_MSG` link). -/
def PcmRL (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  ∀ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s →
    (∃ msg, vs = [.val (.word msg)] ∧ FoPre M msg Γ s ∧ TgtB Γ s.memory msg) →
    ∀ v, r = .returned v → ∃ child, v = .val (.word child) ∧ PmFinL Γ s child t

/-- `process_create_message`'s post (package F3c), in the form of `process_message`'s. -/
def HypPcm (σ : Type) (M : Nat) : Prop :=
  FunSpec σ guestCtx (nm "process_create_message") (PcmRL (σ := σ) M)

/-- `out` is a `tMCO` object of `Γ`. -/
def OutIn (Γ : Gam) (out : BitVec 64) : Prop :=
  ∃ o ∈ Γ, o.base = out ∧ o.ty = tMCO ∧ 96 ≤ o.size

/-- The collision path's record. -/
def OutCol (m : Mem) (out : BitVec 64) : Prop :=
  rd m (out + BitVec.ofNat 64 80) = 0 ∧ rd m (out + BitVec.ofNat 64 88) = 0 ∧
  rd m (out + BitVec.ofNat 64 32) ≠ 0 ∧ rd m (out + BitVec.ofNat 64 8) = 0 ∧
  rd m (out + BitVec.ofNat 64 16) = 0 ∧ rd m (out + BitVec.ofNat 64 24) = 0

/-- A child's record. -/
def OutChild {σ : Type} (Γ : Gam) (t : State σ) (out : BitVec 64) : Prop :=
  MarkVals (rd t.memory (out + BitVec.ofNat 64 80)) (rd t.memory (out + BitVec.ofNat 64 88)) ∧
  (rd t.memory (out + BitVec.ofNat 64 32) ≠ 0 →
    rd t.memory (out + BitVec.ofNat 64 8) = 0 ∧ rd t.memory (out + BitVec.ofNat 64 16) = 0 ∧
      rd t.memory (out + BitVec.ofNat 64 24) = 0) ∧
  (rd t.memory (out + BitVec.ofNat 64 32) = 0 →
    (∃ L, LstObj Γ (rd t.memory (out + BitVec.ofNat 64 16)) L) ∧
    (∃ D, DelObj Γ (rd t.memory (out + BitVec.ofNat 64 24)) D) ∧
    ∀ p, ptrsOf t = some p → RecsBelow Γ t.memory p.hp (rd t.memory (out + BitVec.ofNat 64 16)))

/-- **The post of `process_message_call`** on a return. -/
def PmcFin (Γe : Gam) (se : State σ) (out : BitVec 64) (t : State σ) : Prop :=
  ∃ Γ', G guestC (Hooks.guestHooksR (σ := σ)) Γ' t ∧ KeepH guestC Γe Γ' se t ∧
    BKeep guestC Γe se t ∧ OutIn Γ' out ∧
    (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧
    (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax) ∧
    (OutCol t.memory out ∨ OutChild Γ' t out) ∧
    -- eon: `MCO_RETDATA_N` (`out[48]`) is below `2^32`
    (rd t.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32 ∧
    -- puc: `out`'s 96 bytes lie in no object of the entry typing (`OutFresh`)
    (∀ a : Nat, out.toNat ≤ a → a < out.toNat + 96 → ¬ InObj Γe a)

/-- The value relation of `process_message_call`. -/
def PmcR (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  ∀ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s →
    (∃ msg, vs = [.val (.word msg)] ∧ FoPre M msg Γ s ∧ (fld s.memory msg 24 = 0 → TgtB Γ s.memory msg)) →
    ∀ v, r = .returned v → ∃ out, v = .val (.word out) ∧ PmcFin Γ s out t

end InitECandidate.Solver.MemSafe.Ptx
