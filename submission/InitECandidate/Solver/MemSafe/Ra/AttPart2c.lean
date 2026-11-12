import InitECandidate.Solver.MemSafe.Ra.AttKit6

/-!
# `run_attempt`, after `payload_header` (end): `be`, its stores, `execute_block`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem be_facts {Γ : Gam} {s : State σ} {be0 : BitVec 64} {p0 : Ptrs} {p : Ptrs}
    (hG : G guestC (HR σ) Γ s) (h : (Fct.obj be0 tBOS 120).holds p0 Γ p s) :
    be0.toNat % 8 = 0 ∧ be0.toNat + 120 ≤ 2 ^ 64 := by
  obtain ⟨o, ho, hb, ht, hs⟩ := h
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  have h1 := (hL.1 o ho).1
  have h2 := Aw.obj_hi_le hG o ho
  have e1 : o.lo = be0.toNat := by unfold Obj.lo; rw [hb]
  have e2 : o.hi = o.lo + o.size := rfl
  refine ⟨by omega, by omega⟩

/-- No fact of `S` reads the cells `be0 + off'` for `lo ≤ off' < 120`. -/
def FreeOff (E : EbE σ) (En : Env) (S : FS) (be0 : BitVec 64) (lo : Nat) : Prop :=
  ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
    HoldsAll E.p0 Γ p s S → ∀ f, S f → ∀ y, f.reads y → ∀ off', lo ≤ off' → off' < 120 → y ≠ be0 + BitVec.ofNat 64 off'

theorem freeOff_SB {E : EbE σ} {En : Env} {S : FS} {be0 : BitVec 64} (hobj : SB S be0 (Fct.obj be0 tBOS 120)) :
    FreeOff E En (SB S be0) be0 0 := by
  intro s hpa Γ p hr hL f hf y hy off' _ h2
  exact fr_SB_off hL (be_facts (ebRun_G hr) (hL _ hobj)).2 f hf y hy off' h2

theorem freeOff_cb {E : EbE σ} {En : Env} {S : FS} {be0 C : BitVec 64} (hobj : SB S be0 (Fct.obj be0 tBOS 120))
    (h : FreeOff E En (SB S be0) be0 0) :
    FreeOff E En (fun f => SB S be0 f ∨ f = Fct.cellv (be0 + BitVec.ofNat 64 32) C) be0 40 := by
  intro s hpa Γ p hr hL f hf y hy off' h1 h2
  have hb := be_facts (ebRun_G hr) (hL _ (Or.inl hobj))
  rcases hf with hf | rfl
  · exact h s (pa_mono hpa (fun _ _ x => x) (fun f hf => Or.inl hf)) Γ p hr
      (fun g hg => hL g (Or.inl hg)) f hf y hy off' (by omega) h2
  · have hy' : y = be0 + BitVec.ofNat 64 32 := hy
    rw [hy']
    intro he
    have e1 := congrArg BitVec.toNat he
    rw [ofNat_add_toNat' (by omega), ofNat_add_toNat' (by omega)] at e1
    omega

/-- A store of `n` words at `be + off` into the adopted block. -/
theorem cw_stBe {E : EbE σ} {En : Env} {S : FS} {be0 : BitVec 64} {off n lo : Nat} {e : ExpHOL 64} {rest : ProgHOL 64} {Bk : Nat}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hgo : S (Fct.gobj nmBe be0 tBOS)) (hobj : S (Fct.obj be0 tBOS 120)) (h8 : off % 8 = 0) (hoff : off + 8 * n ≤ 120)
    (hlo : lo ≤ off)
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = n)
    (hfree : FreeOff E En S be0 lo)
    (hk : CW (PA E En S) rest Bk QT) :
    CW (PA E En S) (.seq (.store (.op .add [gv nmBe, cw off]) e) rest) (0 + Bk) QT := by
  refine cw_seq (cw_hn (hn_stBe hgo hobj h8 hoff hlen ?_) (costP_zero (cost_store _ _))) hk
  intro s hpa Γ p hr hL f hf _ y hy off' h1 h2
  exact hfree s hpa Γ p hr hL f hf y hy off' (by omega) (by omega)

theorem len1_ld {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.load .one a) = some v) :
    (flattenHOL v).length = 1 := by
  obtain ⟨w, -, -, rfl⟩ := ev_load_one h
  simp [flattenHOL]

end InitECandidate.Solver.MemSafe.Att
