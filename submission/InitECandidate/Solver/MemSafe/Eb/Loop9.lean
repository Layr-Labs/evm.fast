import InitECandidate.Solver.MemSafe.Eb.Loop8

/-!
# `execute_block`: loop part 9 (`process_transaction(tx, i);`)
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
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

section pt
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {M : Nat}

theorem hn_pt (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    {w t r lg rl be0 c0 wd0 ntx0 nwd0 iv T : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 iv) (hlt : iv.toNat < ntx0.toNat)
    (hEnTx : En (nm "tx") = some (.val (.word T))) (hEnI : En (nm "i") = some (.val (.word iv)))
    (hTx : S (Fct.obj T tTX 0)) :
    HN (PAX E En S (fun Γ p u => CPre Γ ∧ Rec.TxBuf Γ (Exb.gp0 p) u.memory T 152))
      (callD (nm "process_transaction") [lv (nm "tx"), lv (nm "i")])
      (PA E En (fun f => S f ∨ (f = Fct.ent t iv.toNat ∨ f = Fct.ent r iv.toNat))) := by
  have hvs : ∀ (s : State σ) (vs : List (ValueHOL 64)), PA E En S s →
      evs s [lv (nm "tx"), lv (nm "i")] = some vs → vs = [.val (.word T), .val (.word iv)] := by
    intro s vs hpa hvs
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [evI_lv_pa hpa hEnTx v1 h1, evI_lv_pa hpa hEnI v2 h2]
  refine hn_callRx (E := E) (En := En) (S := S) (R := fun Γ p u => CPre Γ ∧ Rec.TxBuf Γ (Exb.gp0 p) u.memory T 152)
    (f := nm "process_transaction") (args := [lv (nm "tx"), lv (nm "i")]) (W := fun g => ptW.contains g = true)
    hPt (gwk_pt (by decide)) (fun f => f = Fct.ent t iv.toNat ∨ f = Fct.ent r iv.toNat) ?_ ?_
  · refine ⟨?_, ?_, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
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
  · intro s vs callee v st Γ Γ' p p' hpa hvs' hr hL hstp hq
    have e := hvs s vs (pax_pa hpa) hvs'
    subst e
    obtain ⟨idx, bo, hidx, hbo, hv1, hv2⟩ := hq
    simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hidx
    subst hidx
    have hbo' : bo = w := Option.some.inj (hbo.symm.trans (hL _ hled.gbo).1)
    subst hbo'
    have e24 : rd s.memory (bo + 24) = t := (hL _ hled.c24).1
    have e32 : rd s.memory (bo + 32) = r := (hL _ hled.c32).1
    have e24' : rd (callEntryStateHOLFinite s callee).memory (bo + 24) = t := e24
    have e32' : rd (callEntryStateHOLFinite s callee).memory (bo + 32) = r := e32
    rw [e24'] at hv1
    rw [e32'] at hv2
    have hiv50 : iv.toNat < 2 ^ 50 := by have := hled.bt; omega
    have m := mul16_ofNat hiv50
    have a8 := add8_ofNat (x := 16 * iv.toNat) (by omega)
    have hv1' : Hooks.VInR tVAL Γ' (rd st.memory (t + BitVec.ofNat 64 (16 * iv.toNat)))
        (rd st.memory (t + BitVec.ofNat 64 (16 * iv.toNat + 8))) := by
      have c1 : t + iv * 16 = t + BitVec.ofNat 64 (16 * iv.toNat) := by
        show t + iv * BitVec.ofNat 64 16 = _; rw [m]
      have c2 : t + iv * 16 + 8 = t + BitVec.ofNat 64 (16 * iv.toNat + 8) := by
        show t + iv * BitVec.ofNat 64 16 + BitVec.ofNat 64 8 = _; rw [m, BitVec.add_assoc, a8]
      rw [c2, c1] at hv1; exact hv1
    have hv2' : Hooks.VInR tVAL Γ' (rd st.memory (r + BitVec.ofNat 64 (16 * iv.toNat)))
        (rd st.memory (r + BitVec.ofNat 64 (16 * iv.toNat + 8))) := by
      have c1 : r + iv * 16 = r + BitVec.ofNat 64 (16 * iv.toNat) := by
        show r + iv * BitVec.ofNat 64 16 = _; rw [m]
      have c2 : r + iv * 16 + 8 = r + BitVec.ofNat 64 (16 * iv.toNat + 8) := by
        show r + iv * BitVec.ofNat 64 16 + BitVec.ofNat 64 8 = _; rw [m, BitVec.add_assoc, a8]
      rw [c2, c1] at hv2; exact hv2
    obtain ⟨oT, hoT, hbT, htT, hsT⟩ := hL _ hled.otxs
    obtain ⟨oR, hoR, hbR, htR, hsR⟩ := hL _ hled.orcs
    obtain ⟨oT', hoT', hbT', htT', hsT'⟩ := hstp.1.ext oT hoT
    obtain ⟨oR', hoR', hbR', htR', hsR'⟩ := hstp.1.ext oR hoR
    intro f hf
    rcases hf with rfl | rfl
    · exact ent_holds (Nat.le_of_lt hlt) ⟨oT', hoT', hbT'.trans hbT, htT'.trans htT, by omega⟩ hv1'
    · exact ent_holds (Nat.le_of_lt hlt) ⟨oR', hoR', hbR'.trans hbR, htR'.trans htR, by omega⟩ hv2'
end pt

end InitECandidate.Solver.MemSafe.Eb
