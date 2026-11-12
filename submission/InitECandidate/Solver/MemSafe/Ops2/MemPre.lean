import InitECandidate.Solver.MemSafe.Ops2.Calls
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The memory-cost prefix on `GK` (sonnet-gk)

* `gk_memlen`: the running frame's `MEM_LEN` is a multiple of 32 below `2^37`;
* `hoareG_gkChgExt`: `charge_gas(e1); extend_memory(e2); k`, the pair every memory handler runs
  after `extend_memory_cost1` (`e2 = x.1`); the side conditions of `extend_memory` follow from a
  hypothesis `hX` on the charged amount `a` (`a + 1 < 2^64`, which `hoareG_gkCharge` gives).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem fld_charge32 (m : Mem) (e a : BitVec 64) : fld (chargeMem m e a) e 32 = fld m e 32 := by
  unfold chargeMem fld
  rw [rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd,
    if_neg (off_ne e (by decide) (by decide) (by decide))]

/-- `MEM_LEN` of the running frame is a multiple of 32 below `2^37`. -/
theorem gk_memlen {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ}
    (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u) :
    (fld u.memory e 32).toNat % 32 = 0 ∧ (fld u.memory e 32).toNat < 2 ^ 37 := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, -, -⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨q, hq, hord, hL, -, -, -, hW⟩ := id hG1
  have hsm := Hooks.guestHooksR_ev.get Γ1 u o hevo.1 hevo.2.1 (hW o hevo.1)
  obtain ⟨-, ⟨h1, h32, -, mo, hmo, hmob, hmot, hsz⟩⟩ := hsm
  have hbnd := (Struct.obj_bounds hord hL hmo).2.1
  unfold Obj.hi at hbnd
  have h1' : (fld u.memory o.base 32).toNat ≤ (fld u.memory o.base 40).toNat := h1
  have h32' : (fld u.memory o.base 32).toNat % 32 = 0 := h32
  have hsz' : (fld u.memory o.base 40).toNat ≤ mo.size := hsz
  have hse : scratchEnd < 2 ^ 37 := by decide
  rw [← hob]
  refine ⟨h32', ?_⟩
  omega

/-- Eon: `MEM_LEN` of the running frame is below `2^32` (the frame memory object lies below `scratchEnd`). -/
theorem gk_memlen32 {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ}
    (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u) :
    (fld u.memory e 32).toNat % 32 = 0 ∧ (fld u.memory e 32).toNat < 2 ^ 32 := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, -, -⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨q, hq, hord, hL, -, -, -, hW⟩ := id hG1
  have hsm := Hooks.guestHooksR_ev.get Γ1 u o hevo.1 hevo.2.1 (hW o hevo.1)
  obtain ⟨-, ⟨h1, h32, -, mo, hmo, hmob, hmot, hsz⟩⟩ := hsm
  have hbnd := (Struct.obj_bounds hord hL hmo).2.1
  unfold Obj.hi at hbnd
  have h1' : (fld u.memory o.base 32).toNat ≤ (fld u.memory o.base 40).toNat := h1
  have h32' : (fld u.memory o.base 32).toNat % 32 = 0 := h32
  have hsz' : (fld u.memory o.base 40).toNat ≤ mo.size := hsz
  have hse : scratchEnd < 2 ^ 32 := by decide
  rw [← hob]
  refine ⟨h32', ?_⟩
  omega

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- **`charge_gas(e1); extend_memory(e2); k`.** -/
theorem hoareG_gkChgExt (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {d : Nat}
    {u0 : State σ} (hu : KJ d u0) {e1 e2 : ExpHOL 64} {a X : BitVec 64}
    (h1 : ∀ t : State σ, t.locals = u0.locals → ev t e1 = some (.val (.word a)))
    (h2 : ∀ t : State σ, t.locals = u0.locals → ev t e2 = some (.val (.word X)))
    (hX : a.toNat + 1 < 2 ^ 64 → X.toNat % 32 = 0 ∧ (fld u0.memory e 32).toNat + X.toNat ≤ 2 ^ 40)
    {k : ProgHOL 64} {b' : Bool}
    (hk : ∀ t : State σ, t.locals = u0.locals → KJ (d + a.toNat) t → a.toNat + 1 < 2 ^ 64 →
      a ≤ fld u0.memory e 64 →
      (fld t.memory e 32).toNat = (fld u0.memory e 32).toNat + X.toNat →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (callD (nm "charge_gas") [e1]) (.seq (callD (nm "extend_memory") [e2]) k))
      (GQ (KJ) b') := by
  refine hoareG_gkCharge hfs hP (P := fun t => t = u0) (d := d) (a := a)
    (fun u hu0 => by subst hu0; exact ⟨hu, h1 _ rfl⟩) ?_
  refine hoareG_pt fun t ⟨u, hu', hl, hKt, ha1, hale, hmem, hg⟩ => ?_
  subst hu'
  have hmem32 : (fld t.memory e 32).toNat = (fld u.memory e 32).toNat := by
    rw [hmem, fld_charge32]
  obtain ⟨hX1, hX2⟩ := hX ha1
  refine hoareG_gkEm hfs (P := fun s => s = t) (d := d + a.toNat) (X := X) ?_ ?_
  · intro s hs; subst hs
    exact ⟨hKt, h2 _ hl, hX1, by rw [hmem32]; exact hX2⟩
  · refine hoareG_pt fun t' ⟨s, hs, hl', hKt', hlen, _⟩ => ?_
    subst hs
    exact hk t' (hl'.trans hl) hKt' ha1 hale (by rw [hlen, hmem32])

end steps

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.fld_charge32
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_memlen
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_memlen32
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkChgExt
