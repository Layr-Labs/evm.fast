import InitECandidate.Solver.MemSafe.Eb.Cost14

/-!
# `execute_block`: the cost walk, part 15 (one loop iteration and the loop)
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

section cw15
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {M : Nat}

theorem pt_obl (hM : 2 ^ 24 + 2 ≤ M) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv T : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hlt : iv.toNat < ntx0.toNat)
    (hEnTx : En (nm "tx") = some (.val (.word T))) (hEnI : En (nm "i") = some (.val (.word iv)))
    (hTx : S (Fct.obj T tTX 0)) :
    CallOblX E En S (fun Γ p u => CPre Γ ∧ Rec.TxBuf Γ (Exb.gp0 p) u.memory T 152) [lv (nm "tx"), lv (nm "i")] (PtPre (σ := σ) M)
      (fun vs s _ a => ∃ idx bo, vs.length = 2 ∧ argW vs 1 = some idx ∧ gword s (nm "bo") = some bo ∧
        PtW bo (rd s.memory (bo + 24)) (rd s.memory (bo + 32)) idx a) (fun g => ptW.contains g = true) := by
  have hvs : ∀ (s : State σ) (vs : List (ValueHOL 64)), PA E En S s →
      evs s [lv (nm "tx"), lv (nm "i")] = some vs → vs = [.val (.word T), .val (.word iv)] := by
    intro s vs hpa hvs
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [evI_lv_pa hpa hEnTx v1 h1, evI_lv_pa hpa hEnI v2 h2]
  refine ⟨?_, ?_, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
  · intro s hpa vs hvs' callee Γ p hr hL ⟨hC, hbuf⟩
    have hpa' : PA E En S s := pax_pa hpa
    have e := hvs s vs hpa' hvs'
    subst e
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
    obtain rfl : p = q := (Option.some.inj (hq.symm.trans (ebRun_ptrs hr))).symm
    obtain ⟨oT, hoT, hbT, htT, -⟩ := hL _ hTx
    refine ⟨hC, T, iv, w, be0, t, r, rfl, ?_⟩
    exact ptPreE_of_led hled hLe ((ptrsOf_congr rfl).trans (ebRun_ptrs hr)) hord hL0
      (jrNZ_congr (s := s) rfl (ebRun_jr hr)) ⟨ebRun_ev hr, ebRun_cc hr⟩ hM ⟨oT, hoT, hbT, htT⟩ hC.1 hbuf hlt
  · intro s hpa vs hvs' callee Γ p hr hL f hf a ha
    have hpa' : PA E En S s := pax_pa hpa
    have e := hvs s vs hpa' hvs'
    obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
    obtain rfl : p = q := (Option.some.inj (hq.symm.trans (ebRun_ptrs hr))).symm
    exact dmiss_pt hled hL hord hL0 hlt e f hf a ha

theorem cw_pt (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M) {BT : Nat} (hc : HypPtCost σ M BT)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv T : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hlt : iv.toNat < ntx0.toNat)
    (hEnTx : En (nm "tx") = some (.val (.word T))) (hEnI : En (nm "i") = some (.val (.word iv)))
    (hTx : S (Fct.obj T tTX 0)) :
    CW (PAX E En S (fun Γ p u => CPre Γ ∧ Rec.TxBuf Γ (Exb.gp0 p) u.memory T 152))
      (callD (nm "process_transaction") [lv (nm "tx"), lv (nm "i")]) (1 + BT + 0)
      (fun r' t' => r' = none ∧ PA E En (fun f => S f ∨ (f = Fct.ent t iv.toNat ∨ f = Fct.ent r iv.toNat)) t') :=
  ⟨cp_callX hc rfl (pt_obl hM hT hz hled hlt hEnTx hEnI hTx), hn_pt hPt hM hT hz hled hlt hEnTx hEnI hTx⟩

end cw15

end InitECandidate.Solver.MemSafe.Eb
