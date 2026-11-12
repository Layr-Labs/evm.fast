import InitECandidate.Solver.MemSafe.Puc.Tail3

/-!
# Puc U6d: the whole tail (pucS27 to the `return`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- The post of a tail step that ends the tail. -/
def TFin (A : TlA σ) (out : BitVec 64) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r = none ∧ TEnd A out t ∧ LKE (EnO out) t

theorem enO_none {out : BitVec 64} {x : MlS} (h : x ≠ nm "out") : EnO out x = none := by
  unfold EnO; simp [h]

theorem resIns_tfin {A : TlA σ} {out : BitVec 64} {n : MlS} (hn : EnO out n = none) :
    ResIns n (TFin A out) := by
  intro r t old h
  exact ⟨h.1, tEnd_loc h.2.1 _ t.clock, lke_res h.2.2 hn old⟩

theorem lkeO_of {out : BitVec 64} {En : Env} {u : State σ} (hEo : En (nm "out") = some (.val (.word out)))
    (h : LKE En u) : LKE (EnO out) u := by
  intro x v hx
  unfold EnO at hx
  split_ifs at hx with e
  · cases hx; subst e; exact h _ _ hEo

/-- The two releases. -/
theorem pu_rel {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out)
    (hEo : En (nm "out") = some (.val (.word out)))
    (hEm : En (nm "system_mark") = some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80)))))
    (hmk : rd A.s0.memory (out + BitVec.ofNat 64 80) ≠ 0) :
    Hoare σ guestCtx (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) pucC (TFin A out) := by
  refine hoare_of_eq' fun s hs hpa => ?_
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hmid := pu_mid P hr
  have hz80 := zt_out P (off := 80) (by norm_num) (by norm_num) (by norm_num)
  have hz88 := zt_out P (off := 88) (by norm_num) (by norm_num) (by norm_num)
  have hm80 : rd s.memory (out + BitVec.ofNat 64 80) = rd A.s0.memory (out + BitVec.ofNat 64 80) := hr.keep _ hz80
  have hm88 : rd s.memory (out + BitVec.ofNat 64 88) = rd A.s0.memory (out + BitVec.ofNat 64 88) := hr.keep _ hz88
  have hrel := hoare_rel' (Γ := keepG Γ) (u0 := s) (outw := out) (mk := rd A.s0.memory (out + BitVec.ofNat 64 80))
    (mm := rd A.s0.memory (out + BitVec.ofNat 64 88)) hmid.hG hmid.heap (hlk _ _ hEo) (hlk _ _ hEm) hm80 hm88 (P.mv hmk)
  refine hoare_post hrel fun r t _ _ h => ⟨h.1, tEnd_of_rel hmid h.2.1, ?_⟩
  intro x v hx
  rw [h.2.2]
  exact lkeO_of hEo hlk x v hx

/-- **The `system_mark != 0` branch** (pucA). -/
theorem pu_then {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out)
    (hEo : En (nm "out") = some (.val (.word out)))
    (hEm : En (nm "system_mark") = some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80)))))
    (hmk : rd A.s0.memory (out + BitVec.ofNat 64 80) ≠ 0)
    (hEn : En (nm "system_ret_n") = none) (hEr : En (nm "system_ret") = none) :
    Hoare σ guestCtx (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) pucA (TFin A out) := by
  have hB := bloc_tl A (refA A) (Zt A out) (O := ([] : List Obj))
  have hz48 := zt_out P (off := 48) (by norm_num) (by norm_num) (by norm_num)
  unfold pucA
  refine hdecT_g hB (resIns_tfin (enO_none (by decide))) (w := rd A.s0.memory (out + BitVec.ofNat 64 48)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ hEo)) (evI_cw s 48))
    rw [h1 v hv]
    show ValueHOL.val (HolWordLab.word (rd s.memory (out + BitVec.ofNat 64 48))) = _
    rw [hr.keep _ hz48]; rfl
  have hEo' : (En.set (nm "system_ret_n") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 48))))) (nm "out") =
      some (.val (.word out)) := by rw [env_set_ne _ _ (by decide)]; exact hEo
  have hEm' : (En.set (nm "system_ret_n") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 48))))) (nm "system_mark") =
      some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80)))) := by
    rw [env_set_ne _ _ (by decide)]; exact hEm
  have hEn' : (En.set (nm "system_ret_n") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 48))))) (nm "system_ret_n") =
      some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 48)))) := env_set_self _ _ _
  have hEr' : (En.set (nm "system_ret_n") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 48))))) (nm "system_ret") = none := by
    rw [env_set_ne _ _ (by decide)]; exact hEr
  refine hseqN (P1 := PAg (TL A (refA A) (Zt A out) ([] : List Obj))
      (En.set (nm "system_ret_n") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 48)))))) ?_ ?_
  · unfold pucB
    refine hn_ite ?_ ?_
    · exact hn_pre (pu_copy P hEo' hEn' P.b48 hEr') (fun s _ h => h.1)
    · exact hoare_skip fun s _ h => ⟨rfl, h.1⟩
  · exact pu_rel P hEo' hEm' hmk

/-- **The tail**: pucS27 to the `return`. -/
theorem pu_tail {A : TlA σ} {out : BitVec 64} (P : TPre A out) (hgs : Bal.HGS σ) :
    Hoare σ guestCtx (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) (EnO out)) pucS27
      (fun r t => r = some (.returned (.val (.word out))) ∧ TEnd A out t) := by
  have hB := bloc_tl A (refA A) (Zt A out) (O := ([] : List Obj))
  have hQT : LocIns (fun (r : Option (PanSemResultExact 64)) (t : State σ) =>
      r = some (.returned (.val (.word out))) ∧ TEnd A out t) := fun r t l c h => ⟨h.1, tEnd_loc h.2 l c⟩
  have hEo : (EnO out) (nm "out") = some (.val (.word out)) := by unfold EnO; simp
  have hz80 := zt_out P (off := 80) (by norm_num) (by norm_num) (by norm_num)
  unfold pucS27
  refine hseqN hn_skip ?_
  unfold pucS28
  refine hseqN (hn_incorp' P hgs) ?_
  unfold pucS29
  refine hdecT_g hB (locIns_resIns hQT _) (w := rd A.s0.memory (out + BitVec.ofNat 64 80)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ hEo)) (evI_cw s 80))
    rw [h1 v hv]
    show ValueHOL.val (HolWordLab.word (rd s.memory (out + BitVec.ofNat 64 80))) = _
    rw [hr.keep _ hz80]; rfl
  have hEo1 : ((EnO out).set (nm "system_mark")
      (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80))))) (nm "out") = some (.val (.word out)) := by
    rw [env_set_ne _ _ (by decide)]; exact hEo
  have hEm1 : ((EnO out).set (nm "system_mark")
      (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80))))) (nm "system_mark") =
      some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80)))) := env_set_self _ _ _
  unfold pucS30
  refine hseqN (P1 := fun t => TEnd A out t ∧ LKE (EnO out) t) ?_ ?_
  · refine hn_ite ?_ ?_
    · refine hoare_of_eq' fun s hs ⟨hpa, hc⟩ => ?_
      have hmk : rd A.s0.memory (out + BitVec.ofNat 64 80) ≠ 0 := by
        have h0 : s.locals.lookup (nm "system_mark") = some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80)))) :=
          hpa.2 _ _ hEm1
        exact cond_ne_gen (evI_lv h0) (evI_cw s 0) hc
      have hn1 : ((EnO out).set (nm "system_mark") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80))))) (nm "system_ret_n") = none := by
        rw [env_set_ne _ _ (by decide)]; exact enO_none (by decide)
      have hn2 : ((EnO out).set (nm "system_mark") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80))))) (nm "system_ret") = none := by
        rw [env_set_ne _ _ (by decide)]; exact enO_none (by decide)
      exact hoare_post (hoare_pre (pu_then P hEo1 hEm1 hmk hn1 hn2) (fun t _ ht => by subst ht; exact hpa))
        (fun r t _ _ h => ⟨h.1, h.2.1, h.2.2⟩)
    · refine hoare_skip fun s hs ⟨hpa, hc⟩ => ⟨rfl, ?_, ?_⟩
      · obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
        exact tEnd_of_mid (pu_mid P hr)
      · exact lkeO_of hEo1 hpa.2
  · refine hoare_return fun s hs hp v hv => ?_
    have hv0 : v = .val (.word out) := evI_lv (hp.2 _ _ hEo) v hv
    subst hv0
    exact ⟨rfl, tEnd_loc hp.1 s.locals s.clock⟩

end InitECandidate.Solver.MemSafe.Puc
