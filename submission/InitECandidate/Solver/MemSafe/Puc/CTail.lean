import InitECandidate.Solver.MemSafe.Puc.CFront

/-!
# Puc cost: the tail, twin of `Tail*.lean` with `CW'`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx
open InitECandidate.Solver.MemSafe.PtC (CW' cw_decCall_gen cw_dec_gen shEq_wv sz_comb sz_one hszW hszW' cw_pre_ex)

variable {σ : Type}

theorem lookupP_inc : Shards.finalState.1.lookup (nm "incorporate_tx_into_block") = none := by decide_cbv
theorem lookupP_pmc : Shards.finalState.1.lookup (nm "process_message_call") = none := by decide_cbv

theorem tblP_inc : tblP (nm "incorporate_tx_into_block") = Wg.bInc := by
  unfold tblP; rw [lookupP_inc]
  simp only []
  rw [if_neg (by decide)]
  simp

theorem tblP_pmc : tblP (nm "process_message_call") = bPmcP := by
  unfold tblP; rw [lookupP_pmc]
  simp only []
  simp

theorem cw_iteP {P : State σ → Prop} {c : ExpHOL 64} {a b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (ha : CW' (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a (cbdP a) Q)
    (hb : CW' (fun s => P s ∧ ev s c = some (.val (.word 0))) b (cbdP b) Q) :
    CW' P (.ite c a b) (cbdP (.ite c a b)) Q :=
  ⟨Inv.costP_ite ha.1 hb.1, hoare_ite ha.2 hb.2⟩

/-- `incorporate_tx_into_block();` with its conditional cost. -/
theorem cw_incorp' {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out) (hgs : Bal.HGS σ) :
    CW' (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) (callD (nm "incorporate_tx_into_block") [])
      (cbdP (callD (nm "incorporate_tx_into_block") []))
      (fun r t => r = none ∧ PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En t) := by
  refine ⟨?_, hn_incorp' P hgs⟩
  show Inv.CostP σ guestCtx _ _ (1 + tblP (nm "incorporate_tx_into_block") + 0)
  rw [tblP_inc]
  refine Inv.costP_callD (Wg.incCost (σ := σ)) ?_
  intro s hs hpa vs hvs callee
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hvs' : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
  subst hvs'
  have hre : TlS A (refA A) (Zt A out) ([] : List Obj) (callEntryStateHOLFinite s callee) Γ p := tl_loc hr callee (s.clock - 1)
  have hpre : Bal.UbPre ([] : List (ValueHOL 64)) (callEntryStateHOLFinite s callee) Γ :=
    ⟨rfl, tl_gf' hre P.gbs (by decide), tl_gf' hre P.ts (by decide), tl_gf' hre P.gba (by decide),
      tl_gf' hre P.gbk (by decide), tl_gf' hre P.gbi (by decide), tl_gf' hre P.gbs2 (by decide),
      tl_gf' hre P.gsk (by decide)⟩
  exact ⟨Γ, p, hre.hG, hre.hp, argsOK_anys (by simp [Bal.biSig]) rfl, hpre⟩

/-- **The copy of the return data** with cost (twin of `pu_copy`). -/
theorem cw_copy {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out)
    (hEo : En (nm "out") = some (.val (.word out))) {n0 : BitVec 64}
    (hEn : En (nm "system_ret_n") = some (.val (.word n0))) (hn32 : n0.toNat < 2 ^ 32)
    (hret : En (nm "system_ret") = none) :
    CW' (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) pucD (cbdP pucD)
      (fun r t => r = none ∧ PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En t) := by
  unfold pucD
  have hB := bloc_tl A (refA A) (Zt A out) (O := ([] : List Obj))
  refine Eb.cw_decCallK (resIns_PAg hB hret) ((sumSpecA_relX tab_alloc).and (funSpec_pt_gw_all guestCtx_code tab_alloc_ok))
    (calleeCostP_tbl (PreC := fun _ _ => True) (by decide_cbv)) (fun _ _ _ _ _ _ => trivial) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨v0, rfl, hv0⟩ := evs_single hvs
  have hv0' : v0 = .val (.word (n0 + BitVec.ofNat 64 8)) := evI_add (evI_lv (hlk _ _ hEn)) (evI_cw s 8) v0 hv0
  subst hv0'
  have hre : TlS A (refA A) (Zt A out) ([] : List Obj) s Γ p := hr
  obtain ⟨Γ', p', hc, hrun, -⟩ := tl_call_core hR hgl (by simp) (by intro g _ h; simp at h)
    (fun _ _ Γ a hw => capPW_st csOK_nil.st hw) hre (argsOK_anys (by simp) rfl) (fun a _ => P.noY a)
    (preT csOK_nil hre callee)
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  have hret' := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) w rfl (by simp [flattenHOL])
  obtain ⟨x, hx, hfb⟩ := hret'
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
  subst hx
  rw [Nat.one_mul, Nat.add_zero] at hfb
  have hn8 : (n0 + BitVec.ofNat 64 8).toNat = n0.toNat + 8 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  have hord' := tl_ord hrun
  have hbuf : BufOK guestC Γ' p' w.toNat n0.toNat := by
    intro a ha
    right
    have ha' : Overlap w.toNat (n0 + BitVec.ofNat 64 8).toNat a := by
      obtain ⟨h1, h2, h3⟩ := ha
      exact ⟨h1, h2, by rw [hn8]; omega⟩
    exact ⟨(hfb.2 a ha').2, alloc_of_fresh (tl_ord hre) hord' (hfb.2 a ha').1⟩
  have hEw : (En.set (nm "system_ret") (.val (.word w))) (nm "system_ret") = some (.val (.word w)) := env_set_self _ _ _
  have hEn' : (En.set (nm "system_ret") (.val (.word w))) (nm "system_ret_n") = some (.val (.word n0)) := by
    rw [env_set_ne _ _ (by decide)]; exact hEn
  have hEo' : (En.set (nm "system_ret") (.val (.word w))) (nm "out") = some (.val (.word out)) := by
    rw [env_set_ne _ _ (by decide)]; exact hEo
  refine Eb.cw_post (Eb.cw_pre (P := PAg (TLb A out w n0.toNat) (En.set (nm "system_ret") (.val (.word w))))
    (cw_seqN (hn_memcpy P (e := .load .one (.op .add [lv (nm "out"), cw 40])) hEw hEn')
      (cw_hnN (hn_stOut P hEo' hEw))) ?_) ?_
  · intro t _ ht
    subst ht
    exact ⟨⟨Γ', p', tl_set hrun (nm "system_ret") _, hbuf⟩, lke_set (lke_restore hlk) _ _⟩
  · intro r t _ h
    refine ⟨h.1, pag_mono h.2 ?_ (fun s hs => hs)⟩
    intro x v hx
    have hne : x ≠ nm "system_ret" := fun e => by rw [e, hret] at hx; cases hx
    rw [env_set_ne _ _ hne]; exact hx

/-- The `system_mark != 0` branch with cost. -/
theorem cw_then {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out)
    (hEo : En (nm "out") = some (.val (.word out)))
    (hEm : En (nm "system_mark") = some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80)))))
    (hmk : rd A.s0.memory (out + BitVec.ofNat 64 80) ≠ 0)
    (hEn : En (nm "system_ret_n") = none) (hEr : En (nm "system_ret") = none) :
    CW' (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) pucA (cbdP pucA) (TFin A out) := by
  have hB := bloc_tl A (refA A) (Zt A out) (O := ([] : List Obj))
  have hz48 := zt_out P (off := 48) (by norm_num) (by norm_num) (by norm_num)
  unfold pucA
  refine cw_decT_g hB (resIns_tfin (enO_none (by decide))) (w := rd A.s0.memory (out + BitVec.ofNat 64 48)) ?_ ?_
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
  refine cw_seqC (P1 := PAg (TL A (refA A) (Zt A out) ([] : List Obj))
      (En.set (nm "system_ret_n") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 48)))))) ?_ ?_
  · unfold pucB
    refine cw_iteP ?_ ?_
    · exact Eb.cw_pre (cw_copy P hEo' hEn' P.b48 hEr') (fun s _ h => h.1)
    · exact cw_leafN (hoare_skip fun s _ h => ⟨rfl, h.1⟩)
  · exact cw_leafN (pu_rel P hEo' hEm' hmk)

end InitECandidate.Solver.MemSafe.Puc
