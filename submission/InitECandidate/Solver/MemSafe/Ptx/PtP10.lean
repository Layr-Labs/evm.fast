import InitECandidate.Solver.MemSafe.Ptx.PtP9
import InitECandidate.Solver.MemSafe.Cca.All

/-!
# F3f: the creation branch (`tx.to == 0`) of the message-building code (`ptS187`)
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

theorem cca_fin : ptAllNames.contains (nm "compute_contract_address") = true := by decide_cbv

theorem resIns_Sb {E : PtE σ} {En : Env} {S : FS} {wm t0 : BitVec 64} {n : MlS} (hn : En n = none) :
    ResIns n (fun (r : Option (PanSemResultExact 64)) (t : State σ) =>
      r = none ∧ ∃ v32 v96 v120 : BitVec 64, PA E En (Sb S wm v32 v96 v120 t0) t) :=
  fun r t old ⟨hr, v32, v96, v120, h⟩ => ⟨hr, v32, v96, v120, pa_res h hn old⟩

/-- **The creation branch**. -/
theorem pt_then {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)} {we : BitVec 64}
    (hP : PtPre E) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L)
    (hL : ∀ p ∈ L, p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0) (hemp : En (nm "empty") = some (.val (.word we)))
    (hsa : En (nm "sa") = none) (hct : En (nm "ct") = none)
    (hTO : rd E.s0.memory (E.tx + BitVec.ofNat 64 152) = 0) :
    HN (PA E En S) ptS187
      (fun t => ∃ v32 v96 v120 : BitVec 64, PA E En (Sb S wm v32 v96 v120 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152))) t) := by
  have htx := K.A.C0.tx
  unfold ptS187
  refine hdecNoNFU (resIns_Sb hsa) tab_get_account
    (callOK_lvbufs csOK_tbl ⟨by simp, by simp⟩ (by decide) (by intro g h; simp at h) getacct_fin rfl
      (by par_tac) (by
        intro i n' h
        rcases i with _ | i <;> simp at h
        subst h
        exact ⟨nm "sender", w, rfl, K.A.C0.sd, K.A.C0.bsd⟩)
      (fun g ty h => (K.A.C0.gl g ty h).1)) hsa ?_
  unfold ptS192
  refine hdecAllocA (resIns_Sb hct) (e := cw 24) (n := BitVec.ofNat 64 24) (ty := tB24)
    (fun s _ => evI_cw s 24) K.A.C0.gl plain_tB24 tags_tB24 rfl b24_slot (by decide) (by decide) (by decide) ?_
  intro wc
  have Kc := msk_setF K (x := nm "ct") (by decide) (by unfold AdV; decide) (by decide) (.val (.word wc))
    [Fct.obj wc tB24 24, Fct.bufok0 wc 24, Fct.prop (wc.toNat % 8 = 0 ∧ heapBase ≤ wc.toNat ∧ wc.toNat + 24 ≤ heapEnd)]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl
        · exact benign_obj _ _ _
        · exact benign_bufok0 _ _
        · exact benign_prop _)
  have e_tx : (En.set (nm "ct") (.val (.word wc))) (nm "tx") = some (.val (.word E.tx)) := by
    rw [env_set_ne _ _ (by decide)]; exact htx
  have e_emp : (En.set (nm "ct") (.val (.word wc))) (nm "empty") = some (.val (.word we)) := by
    rw [env_set_ne _ _ (by decide)]; exact hemp
  have e_ct : (En.set (nm "ct") (.val (.word wc))) (nm "ct") = some (.val (.word wc)) := env_set_self _ _ _
  refine hghostF (Fct.bufok0 wc 20) (fun s hpa D Γ p hr hL' =>
    bufok0_le (n := 24) (by norm_num) (hL' _ (Or.inr (by simp)))) ?_
  refine hghostF (Fct.prop ((rd E.s0.memory (E.tx + BitVec.ofNat 64 200)).toNat + 63 < 2 ^ 64))
    (fun s hpa D Γ p hr hL' => by
      have := tx_n_bound hP
      show (rd E.s0.memory (E.tx + BitVec.ofNat 64 200)).toNat + 63 < 2 ^ 64
      omega) ?_
  have Kc1 := msk_addF Kc [Fct.bufok0 wc 20] (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_bufok0 _ _)
  have Kc2a := msk_addF Kc1 [Fct.prop ((rd E.s0.memory (E.tx + BitVec.ofNat 64 200)).toNat + 63 < 2 ^ 64)]
    (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
  refine hghostF (Fct.prop ((BitVec.ofNat 64 0).toNat < 2 ^ 32))
    (fun s hpa D Γ p hr hL' => show (BitVec.ofNat 64 0).toNat < 2 ^ 32 by decide) ?_
  have Kc2 := msk_addF Kc2a [Fct.prop ((BitVec.ofNat 64 0).toNat < 2 ^ 32)]
    (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
  unfold ptS193
  refine hseqN (hn_callC (Cca.ccaHyp_proved (σ := σ)).summ
    (callOK_lvbufs (sg := (⟨[.any, .any, .buf 20], [], [], false⟩ : Sig))
      (args := [lv (nm "sender"), .op .sub [.load .one (.op .add [lv (nm "sa"), cw 0]), cw 1], lv (nm "ct")]) csOK_nil ⟨by simp, by simp⟩ (by decide) (by intro g h; simp at h) cca_fin rfl
      (by par_tac) (by
        intro i n' h
        rcases i with _ | _ | _ | i <;> simp at h
        subst h
        exact ⟨nm "ct", wc, rfl, e_ct, Or.inl (Or.inl (Or.inl (Or.inr (by simp))))⟩)
      (fun g ty h => (Kc2.A.C0.gl g ty h).1))) ?_
  unfold ptS194
  refine hseqN (hn_c9_one Kc2 (off := 32) (x := wc) (fun s hpa => evI_lv (hpa.2 _ _ e_ct)) (by norm_num)
    (by norm_num) (by hnr_tac)) ?_
  have K3 := msk_addM Kc2 (off := 32) (x := wc) (by norm_num) (by norm_num)
  unfold ptS196
  refine hseqN (hn_stMs K3 (off := 88) (k := 1) (hlen_lv_w e_emp) (by norm_num) (by norm_num) (by hnr_tac)) ?_
  unfold ptS197
  refine hseqN (hn_c9_one K3 (off := 96) (x := BitVec.ofNat 64 0) (fun s hpa => evI_cw s 0)
    (by norm_num) (by norm_num) (by hnr_tac)) ?_
  have K3b := msk_addM K3 (off := 96) (x := BitVec.ofNat 64 0) (by norm_num) (by norm_num)
  unfold ptS198
  refine hseqN (hn_stMs K3b (off := 112) (k := 1) (fun s hpa v hv => len_ld1 hv) (by norm_num) (by norm_num)
    (by hnr_tac)) ?_
  unfold ptS199
  have hA := hn_c9_one K3b (off := 120) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 200))
    (evI_ldtx hP e_tx (by norm_num) (by norm_num)) (by norm_num) (by norm_num) (by hnr_tac)
  have K4 := msk_addM K3b (off := 120) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 200)) (by norm_num) (by norm_num)
  have hB := hn_stMs K4 (off := 104) (k := 1) (e := cw 0) (hlen_cw 0) (by norm_num) (by norm_num) (by hnr_tac)
  refine hn_post (hn_seq hA hB) ?_
  intro t _ h
  refine ⟨wc, BitVec.ofNat 64 0, rd E.s0.memory (E.tx + BitVec.ofNat 64 200), pa_mono h (env_mono_set hct _) ?_⟩
  have htT : tgtF (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) wc = Fct.obj wc tB24 24 := by
    unfold tgtF; rw [if_pos hTO]
  intro f hf
  unfold Sb addF at hf
  rw [htT] at hf
  unfold addF
  simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hf ⊢
  tauto

end InitECandidate.Solver.MemSafe.Ptx
