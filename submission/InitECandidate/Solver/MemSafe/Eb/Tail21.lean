import InitECandidate.Solver.MemSafe.Eb.Tail20

/-!
# `execute_block`: `process_general_purpose_requests();` (ebS37)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section gpr
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}
  {w t r lg rl be0 c0 wd0 ntx0 nwd0 rq : BitVec 64}

theorem hn_gpr (hP : HypGpr σ) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S) (hT : Tidy Z S)
    (hz : ∀ g ∈ Z, ¬ WgW g) (hG : GprK (σ := σ) E.p0 S w t r lg rl be0 c0 wd0 ntx0 nwd0 rq) :
    HN (PA E En S) (callD (nm "process_general_purpose_requests") [])
      (fun t' => ∃ k : Nat, k ≤ 5 ∧ PA E En (fun f => S1 S w f ∨ f = Fct.cellv (w + BitVec.ofNat 64 64) (BitVec.ofNat 64 k)) t') := by
  let R : Gam → Ptrs → State σ → Prop := fun Γ _ u => CPre Γ ∧ rd u.memory (w + BitVec.ofNat 64 64) = 0
  refine hn_pre (hn_post (hn_callRxE (E := E) (En := En) (S := S1 S w) (R := R) (X := {k : Nat // k ≤ 5})
    (f := nm "process_general_purpose_requests") (args := []) (W := WgW) hP.1 hP.2
    (fun x f => f = Fct.cellv (w + BitVec.ofNat 64 64) (BitVec.ofNat 64 x.1)) ?obl ?hnew)
    (fun t' _ h => by obtain ⟨x, hx⟩ := h; exact ⟨x.1, x.2, hx⟩)) ?pre
  case pre =>
    intro s _ hpa
    obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
    obtain ⟨hr', hC⟩ := ebRun_keepG hK hE0 hr
    refine ⟨⟨keepG Γ, p, hr', fun f hf => holds_keepG (hS f hf.1) (hL f hf.1), hC, ?_⟩, hlk⟩
    exact (hL _ hG.c64).1
  case obl =>
    refine ⟨?_, ?_, (tidy_gmiss (tidy_mono hT (fun g hg => hg) (fun f hf => hf.1)) hz).1,
      (tidy_gmiss (tidy_mono hT (fun g hg => hg) (fun f hf => hf.1)) hz).2⟩
    · intro s hpx vs hvs callee Γ p hr hL hR
      rw [evs_nil] at hvs
      obtain rfl : vs = [] := (Option.some.inj hvs).symm
      have hLe := holdsAll_loc hL callee (s.clock - 1)
      refine ⟨rfl, hR.1, balG_of_balS (balS_s1 hG.led.bal) hLe, ?_⟩
      obtain ⟨o3, ho3, hb3, ht3, -⟩ := hLe _ (s1_obj hG.led.orl)
      exact ⟨w, rq, rl, (hLe _ (s1_gobj hG.led.gbo)).1, hLe _ (s1_obj hG.led.obo),
        (hLe _ (s1_cell hG.c56 (off56_ne w))).1, hLe _ (s1_obj hG.orq), hR.2,
        (hLe _ (s1_cell hG.led.c72 (off72_ne w))).1, o3, ho3, hb3, ht3⟩
    · intro s hpx vs hvs callee Γ p hr hL f hf a ha hD
      obtain ⟨bo, rq', hbo, hrq, hcase⟩ := hD
      have hLe := holdsAll_loc hL callee (s.clock - 1)
      obtain rfl : bo = w := Option.some.inj (hbo.symm.trans (hLe _ (s1_gobj hG.led.gbo)).1)
      obtain rfl : rq' = rq := hrq.symm.trans (hLe _ (s1_cell hG.c56 (off56_ne bo))).1
      obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
      obtain rfl : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hr))
      have obo' := hL _ (s1_obj hG.led.obo)
      have orq' := hL _ (s1_obj hG.orq)
      by_cases hpc : ∃ a' v', f = Fct.pcv a' v'
      · obtain ⟨a', v', rfl⟩ := hpc
        have hh := hL _ hf
        have ha' : a = a' := ha
        subst ha'
        have hb : BCell guestC Γ a := by
          rcases hcase with rfl | ⟨j, hj, rfl | rfl⟩
          · exact bcell_of_base (Or.inr (Or.inl rfl)) obo' (by omega) (by omega)
          · exact bcell_of_base (Or.inl rfl) orq' (by omega) (by omega)
          · exact bcell_of_base (Or.inl rfl) orq' (by omega) (by omega)
        exact plCell_ne_bCell hord hL0 hh.2 hb rfl
      · push_neg at hpc
        have hy := hG.led.rd f hf.1 (fun a v h => hpc a v h) a ha
        exact ycl_ne_gprd hord hL0 (geo_s1 hG.led hL) le_rfl orq' (hL _ (s1_prop hG.rw)) (hL _ (s1_prop hG.rt))
          (hL _ (s1_prop hG.rr)) (hL _ (s1_prop hG.rb)) (hL _ (s1_prop hG.rd)) (fun h => hG.nr64 Γ q s hord hL0 hL f hf.1 hf.2 (h ▸ ha)) hy hcase
  case hnew =>
    intro s vs callee v st Γ Γ' p p' hpx hvs hr hL hstp hq
    obtain ⟨bo, k, hbo, hk, hrd⟩ := hq
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    obtain rfl : bo = w := Option.some.inj (hbo.symm.trans (hLe _ (s1_gobj hG.led.gbo)).1)
    refine ⟨⟨k, hk⟩, ?_⟩
    intro f hf
    subst hf
    exact ⟨hrd, bCell_ext hstp.1.ext (bcell_of_base (Or.inr (Or.inl rfl)) (hL _ (s1_obj hG.led.obo)) (by omega) (by omega))⟩

end gpr

end InitECandidate.Solver.MemSafe.Eb
