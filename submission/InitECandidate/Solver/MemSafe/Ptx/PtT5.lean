import InitECandidate.Solver.MemSafe.Ptx.PtT4

/-!
# F3g: piece 1 of the tail, `ptS114` to `ptS132`: gas accounting and the two `create_ether`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem tl_p1 {K : TlCtx σ} {O : List Obj} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K) (hQT : LocIns QT)
    (hk : Hoare σ guestCtx (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS132 QT) :
    Hoare σ guestCtx (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS114 QT := by
  have hB := bloc_tl K.A K.ref0 (Za K) (O := O)
  unfold ptS114
  refine hdecF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS115
  refine hdecAnyT (locIns_resIns hQT _) tab_udiv_small5 (by simp) rfl udiv5_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS116
  refine hdecAnyT (locIns_resIns hQT _) tab_min (by simp) rfl min_fin' rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS117
  refine hdecF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS118
  refine hdecAnyT (locIns_resIns hQT _) tab_max (by simp) rfl max_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS119
  refine hdecF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS120
  refine hdecAnyT (locIns_resIns hQT _) tab_fee_mul (by simp) rfl feemul_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS121
  refine hdecAnyT (locIns_resIns hQT _) tab_u256_sub (by simp) rfl u256sub_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS122
  refine hdecAnyT (locIns_resIns hQT _) tab_fee_mul (by simp) rfl feemul_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS123
  refine hseqN (hn_callT tab_create_ether csOK_tbl_jr_sk ⟨by decide, by decide⟩ (by decide) cether_fin
    (fun s hpa vs hvs Γ p hr => ?_)
    (fun s hpa vs hvs => by
      obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
      have hx' : x = .val (.word K.sender) := evI_lv (hpa.2 _ _ (enT0_sender K)) x hx
      subst hx'
      exact cether_argsY hP.sndY)) ?_
  · obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    exact cether_args_sender hP hpa hr hx
  unfold ptS124
  refine hseqN (hn_callT tab_create_ether csOK_tbl_jr_sk ⟨by decide, by decide⟩ (by decide) cether_fin
    (fun s hpa vs hvs Γ p hr => ?_)
    (fun s hpa vs hvs => by
      obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
      obtain ⟨Γ, p, hr⟩ := hpa.1
      have h1 : EvI s (.load .one (.op .add [gv (nm "be"), cw 32]))
          (.val (.word (rd s.memory (K.E.be + BitVec.ofNat 64 32)))) :=
        evI_ld (evI_add (evI_gv (tl_glob_be hr hP.B.hbe)) (evI_cw s 32))
      have hx' := h1 x hx
      subst hx'
      have hk32 := hr.keep _ (za_be hP (off := 32) (by norm_num) (by norm_num))
      rw [hk32]
      exact cether_argsY hP.coinY)) ?_
  · obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    have h1 : EvI s (.load .one (.op .add [gv (nm "be"), cw 32]))
        (.val (.word (rd s.memory (K.E.be + BitVec.ofNat 64 32)))) :=
      evI_ld (evI_add (evI_gv (tl_glob_be hr hP.B.hbe)) (evI_cw s 32))
    have hx' := h1 x hx
    subst hx'
    have hk32 := hr.keep _ (za_be hP (off := 32) (by norm_num) (by norm_num))
    refine WaveHelpers.argsOK_2 ⟨_, rfl, ?_⟩ trivial
    rw [hk32]
    exact tl_bufOK hr hP.coin
  unfold ptS126
  refine hdecF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS128
  refine hdecF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS129
  refine hseqN (hn_iteAssign hB (enT0_none K (by decide) (by decide) (by decide))) ?_
  unfold ptS130
  refine hdecAnyT (locIns_resIns hQT _) tab_max (by simp) rfl max_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  exact hk

end InitECandidate.Solver.MemSafe.Ptx
