import InitECandidate.Solver.MemSafe.PtC.S11
import InitECandidate.Solver.MemSafe.PtC.DelLoop

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

private theorem cw_ite {P : State σ → Prop} {c : ExpHOL 64} {a b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (ha : CW' (fun s => P s ∧ CondTrue s c) a (cbd a) Q)
    (hb : CW' (fun s => P s ∧ ev s c = some (.val (.word 0))) b (cbd b) Q) :
    CW' P (.ite c a b) (cbd (.ite c a b)) Q :=
  ⟨Inv.costP_ite ha.1 hb.1, hoare_ite ha.2 hb.2⟩

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem ctb6 (hP : TlPre K) (hQT : LocIns QT)
    (hz : Z (K.out + BitVec.ofNat 64 24) ∧ ref (K.out + BitVec.ofNat 64 24) = K.ref0 (K.out + BitVec.ofNat 64 24))
    (hout : En (nm "out") = some (.val (.word K.out))) (hdel : En (nm "del") = none)
    (hdcap : En (nm "dcap") = none) (hs : En (nm "s") = none) (hi : En (nm "i") = none)
    (hk : CW' (PAg (TL K.A ref Z O) En) ptS170 (cbd ptS170) QT) :
    CW' (PAg (TL K.A ref Z O) En) ptS168 (cbd ptS168) QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS168
  refine cw_decT_g hB (locIns_resIns hQT _) (w := K.ref0 (K.out + BitVec.ofNat 64 24)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ hout)) (evI_cw s 24))
    have h2 := h1 v hv
    rw [h2]
    show ValueHOL.val (HolWordLab.word (rd s.memory (K.out + BitVec.ofNat 64 24))) = _
    rw [hr.keep _ hz.1, hz.2]
  unfold ptS169
  set d := K.ref0 (K.out + BitVec.ofNat 64 24) with hd
  have hdl : (En.set (nm "del") (.val (.word d))) (nm "del") = some (.val (.word d)) := env_set_self _ _ _
  refine cw_seqC (P1 := PAg (TL K.A ref Z O) (En.set (nm "del") (.val (.word d)))) ?_ ?_
  · unfold ptS171
    refine cw_ite ?_ (cw_hnN (hn_pre hn_skip (fun s _ h => h.1)))
    have hne : ∀ s : State σ, PAg (TL K.A ref Z O) (En.set (nm "del") (.val (.word d))) s →
        (∃ w, ev s (.cmp .notEqual (lv (nm "del")) (cw 0)) = some (.val (.word w)) ∧ w ≠ 0) → d ≠ 0 :=
      fun s hpa hc => cond_ne_gen (evI_lv (hpa.2 _ _ hdl)) (evI_cw s 0) hc
    by_cases hd0 : d = 0
    · exact ⟨fun s _ h => (hne s h.1 h.2 hd0).elim, fun s _ h => (hne s h.1 h.2 hd0).elim⟩
    refine Eb.cw_pre (P := PAg (TL K.A ref Z O) (En.set (nm "del") (.val (.word d)))) ?_ (fun s _ h => h.1)
    have hF := hP.delF hd0
    have hdc : (En.set (nm "del") (.val (.word d))) (nm "dcap") = none := by
      rw [env_set_ne _ _ (by decide)]; exact hdcap
    unfold ptS176
    refine cw_decT_g hB (resIns_PAg hB hdc) (w := Inv.hdr K.E.s0.memory d 24) ?_ ?_
    · intro s hpa v hv
      obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
      have h1 := evI_ld (evI_add (evI_lv (hlk _ _ hdl)) (evI_cw s 24))
      have h2 := h1 v hv
      rw [h2]
      show ValueHOL.val (HolWordLab.word (rd s.memory (d + BitVec.ofNat 64 24))) = _
      rw [hr.kY _ hF.y24]
      rfl
    unfold ptS177
    set E1 := (En.set (nm "del") (.val (.word d))).set (nm "dcap") (.val (.word (Inv.hdr K.E.s0.memory d 24))) with hE1
    have hiE : E1 (nm "i") = none := by
      rw [hE1, env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact hi
    have hsE : E1 (nm "s") = none := by
      rw [hE1, env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact hs
    have hdE : E1 (nm "del") = some (.val (.word d)) := by
      rw [hE1, env_set_ne _ _ (by decide)]; exact hdl
    have hcE : E1 (nm "dcap") = some (.val (.word (Inv.hdr K.E.s0.memory d 24))) := env_set_self _ _ _
    refine cw_seqN (hassignT_g hB (w' := 0) (fun s hpa v hv => (evI_cw s 0) v hv)) ?_
    refine Eb.cw_post ⟨costP_deletionLoop hF rfl hdE hcE hsE, hn_delLoop hF rfl hdE hcE hsE⟩ ?_
    intro r t _ h
    refine ⟨h.1, pag_mono h.2 ?_ (fun s h => h)⟩
    intro y v hy
    exact env_mono_set hiE _ y v (env_mono_set hdc _ y v hy)
  · refine Eb.cw_pre hk ?_
    intro t _ ht
    exact pag_mono ht (env_mono_set hdel _) (fun s h => h)

end

end InitECandidate.Solver.MemSafe.PtC
