import InitECandidate.Solver.MemSafe.Eb.Cost2
import InitECandidate.Solver.MemSafe.Eb.Puc
import InitECandidate.Solver.MemSafe.Eb.Tail12

/-!
# `execute_block`: the cost walk, part 3 (call obligations of the conditional callees)
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

section obl
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem puc_obl (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (pucW.contains g = true)) (hbal : BalS S)
    {g : MlS} {T : BitVec 64} (hgT : S (Fct.gobj g T tB24)) {e2 : ExpHOL 64}
    (he2 : ∀ s : State σ, PA E En S s → ∀ v, ev s e2 = some v → ∃ d, v = .val (.word d)) :
    CallOblK E En S [gv g, e2, cw 32] PucPre (fun _ _ _ _ => False) (fun g' => pucW.contains g' = true) := by
  refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
  intro s hpa vs hvs callee Γ p hr hL hC
  have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  have e1 := evI_gobj hpa' hgT v1 h1
  obtain ⟨d, hd⟩ := he2 s hpa' v2 h2
  rw [ev_cw] at h3
  cases h3
  subst e1; subst hd
  have hLe := holdsAll_loc hL callee (s.clock - 1)
  obtain ⟨hgw, o, ho, hob, hot⟩ := hL _ hgT
  obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hr))
  refine ⟨hC, balG_of_balS hbal hLe, T, d, BitVec.ofNat 64 32, rfl, ?_, by decide⟩
  have := bufOK_tB24 hord hL0 ho hot
  rw [hob] at this
  exact this

theorem wd_obl (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ WgW g) (hbal : BalS S) {pl0 : BitVec 64}
    (hpl : S (Fct.obj pl0 tPL 136)) (hEn : En (nm "pl") = some (.val (.word pl0))) :
    CallOblK E En S [lv (nm "pl")] WdPre (fun _ _ _ _ => False) WgW := by
  refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
  intro s hpa vs hvs callee Γ p hr hL hC
  have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  rw [evs_nil] at hr1
  cases hr1
  have e1 := evI_lv_pa hpa' hEn v1 h1
  subst e1
  have hLe := holdsAll_loc hL callee (s.clock - 1)
  obtain ⟨o, ho, hob, hot, -⟩ := hL _ hpl
  exact ⟨hC, balG_of_balS hbal hLe, pl0, rfl, o, ho, hob, hot⟩

theorem csr_obl {x : MlS} {rw : BitVec 64} (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hEn : En x = some (.val (.word rw))) (hfb : S (Fct.fbuf rw 32)) :
    CallObl E En S [lv x] CsrPre (fun _ _ _ _ => False) (fun g' => tabW.contains g' = true) := by
  refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
  intro s hpa vs hvs callee Γ p hr hL
  have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  rw [evs_nil] at hr1
  cases hr1
  have e1 := evI_lv_pa hpa' hEn v1 h1
  subst e1
  have hLe := holdsAll_loc hL callee (s.clock - 1)
  have hre := ebRun_loc hr callee (s.clock - 1)
  refine ⟨by simp [Trie.csrSig], ?_⟩
  intro i pt v hpt hv
  cases i with
  | zero =>
    simp only [Trie.csrSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨rw, rfl, bufOK_of_fbuf ⟨_, _, hre⟩ (hLe _ hfb)⟩
  | succ i => simp [Trie.csrSig] at hpt

theorem bmi_obl {ea en eo : ExpHOL 64} {A N O : BitVec 64} {n : Nat}
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hA : ∀ s : State σ, PA E En S s → EvI s ea (.val (.word A)))
    (hN : ∀ s : State σ, PA E En S s → EvI s en (.val (.word N)))
    (hO : ∀ s : State σ, PA E En S s → EvI s eo (.val (.word O)))
    (hsl : S (Fct.sla A n)) (hNn : N.toNat = n) (hn : n < 2 ^ 50) (hfb : S (Fct.fbuf O 32)) :
    CallObl E En S [ea, en, eo] BmiPreC (fun _ _ _ _ => False) (fun g' => tabW.contains g' = true) := by
  refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
  intro s hpa vs hvs callee Γ p hr hL
  have hpa' : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  have e1 := hA s hpa' v1 h1
  have e2 := hN s hpa' v2 h2
  have e3 := hO s hpa' v3 h3
  subst e1 e2 e3
  have hLe := holdsAll_loc hL callee (s.clock - 1)
  have hre := ebRun_loc hr callee (s.clock - 1)
  have hordp := ebRun_ord hre
  obtain ⟨q, hq, -, hL0, -⟩ := ebRun_G hre
  obtain rfl : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hre))
  refine ⟨⟨by simp [Trie.bmiSig], ?_⟩, bmiPre_of_sla hordp hL0 (ebRun_ptrs hre) (hLe _ hsl) hNn hn, A, N, O, rfl, by omega⟩
  intro i pt v hpt hv
  match i, pt, v with
  | 0, pt, v =>
    simp only [Trie.bmiSig, List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt; trivial
  | 1, pt, v =>
    simp only [Trie.bmiSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt; trivial
  | 2, pt, v =>
    simp only [Trie.bmiSig, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨O, rfl, bufOK_of_fbuf ⟨_, _, hre⟩ (hLe _ hfb)⟩
  | i + 3, pt, v => simp [Trie.bmiSig] at hpt

end obl

end InitECandidate.Solver.MemSafe.Eb
