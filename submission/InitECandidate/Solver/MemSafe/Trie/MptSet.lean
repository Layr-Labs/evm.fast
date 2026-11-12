import InitECandidate.Solver.MemSafe.Trie.MpsPost
import InitECandidate.Solver.MemSafe.Ins.InsBody
import InitECandidate.Solver.MemSafe.Ins.DelNodeFn
import InitECandidate.Solver.MemSafe.Dn.Resolve2

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `mpt_set`: the memory-safety summary

`sumSpecA_mpt_set`: `mpt_set(m, key, klen, vptr, vlen)` at `guestHooksR`, signature
`[buf 16, any, any, any, any]`, capabilities `insCaps`. It calls `mpt_nibble_key` (adopting the
nibble buffer as `tNIB` words), reads the root, calls `_mpt_delete_node` or `_mpt_insert_node`
and stores the new root into the handle `m` (an aligned heap block outside `Γ`, an argument
buffer cell).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.Band4 (RootOK rootOK_ext msBody code_ms msCond)

variable {σ : Type}

def mpsSig : Sig := ⟨[.buf 16, .any, .any, .any, .any], [], [], true⟩

/-- The precondition: `m` is a `mpt_new` record, `2 klen` does not wrap, the value slice is `tVAL`. -/
def MpsPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ M K KL VP VL : BitVec 64,
    vs = [.val (.word M), .val (.word K), .val (.word KL), .val (.word VP), .val (.word VL)] ∧
    MRecF Γ s M ∧ 2 * KL.toNat < 2 ^ 64 ∧ Hooks.VInR Types.tVAL Γ VP VL

theorem rootOK_of_rt {Γ : Gam} {w : BitVec 64} (h : Rt Γ w) : RootOK Γ w := by
  rcases h with h | ⟨o, ho, hb, ht⟩
  · exact Or.inl h
  · exact Or.inr ⟨o, ho, hb, ht⟩

theorem fits_of_rt' {Γ : Gam} {w : BitVec 64} (h : RootOK Γ w) : Fits Γ Types.nodeU w :=
  Band4.fits_of_rootOK h

theorem gpjF_of_gp {a : Act σ} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : GP a (fun _ => False) E Rv r t) : GPJ a (fun _ => False) Rv r t :=
  ⟨fun hr => (h.1 hr).1.elim, h.2⟩

theorem gpF_of_gpj {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : GPJ a (fun _ => False) Rv r t) : GP a L E Rv r t :=
  ⟨fun hr => (h.1 hr).elim, h.2⟩

theorem sumSpecA_mpt_set :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "mpt_set") mpsSig
      MpsPre (fun _ s Γ a => CapPW insCaps s Γ a)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ M, argW vs 0 = some M ∧ HRec Γ' p' t.memory M) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gpC (Rx := fun vs _ Γ' p' mm _ => ∃ M, argW vs 0 = some M ∧ HRec Γ' p' mm M)
    hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_ins _) (by
      intro c hc
      simp only [insCaps, leafCaps, brCaps, List.cons_append, List.nil_append, List.mem_cons,
        List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl <;> rfl) ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_ms hl
  obtain ⟨M, K, KL, VP, VL, rfl, hMR, hKL, hVin⟩ := hpre
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) mpsSig insCaps _ s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hCb : a.Cb = Types.guestC := rfl
  have haH : a.H = Hooks.guestHooksR (σ := σ) := rfl
  have hgr : a.sg.grows = true := rfl
  let kv0 : List (MlS × BitVec 64) := [(nm "m", M), (nm "key", K), (nm "klen", KL),
    (nm "vptr", VP), (nm "vlen", VL)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl | rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
    · exact (hbind 3 (by decide) (by simp)).1
    · exact (hbind 4 (by decide) (by simp)).1
  obtain ⟨pM, hpM, hM8, hMb, hMhp, hMo1, hMo2, hMroot⟩ := hMR
  have hp0 : pM = p0 := by
    have := hh.2.1
    rw [hpM] at this
    exact Option.some.inj this
  have hEH0 : EH M Γ0 p0 := hp0 ▸ ⟨hM8, hMb, hMhp, hMo1, hMo2⟩
  let E0 : Gam → Ptrs → Mem → Prop := fun Γ q mm =>
    EH M Γ q ∧ RF Γ (rd mm M) ∧ Hooks.VInR Types.tVAL Γ VP VL
  let Rv0 : Gam → Ptrs → Mem → ValueHOL 64 → Prop := fun Γ' p' mm v =>
    RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ M', argW a.vs 0 = some M' ∧ HRec Γ' p' mm M'
  refine hoareG_conseq (P := GI a (LKV kv0) E0)
    (Q := GP a (fun _ => False) (fun _ _ _ => True) Rv0) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hEH0, hMroot, hVin⟩
  · intro r t _ _ h
    exact gp_final h
  unfold msBody
  have hmk : ∀ p ∈ kv0, p.1 ≠ nm "nk" := by lkv_fresh [kv0]
  have hrt : ∀ p ∈ kv0, p.1 ≠ nm "root" := by lkv_fresh [kv0]
  have hnkroot : (nm "nk") ≠ (nm "root") := by decide
  have hKeccak := csumm_keccak256 hF Mpt.Leaves.domTop_guestCtx (le_refl 32) false
  refine gp_decCallA ha (f := nm "mpt_nibble_key") (sg' := MptH.mnkSig)
    (MptH.sumSpec_mpt_nibble_key hF hKeccak)
    (funSpec_and Band4.ret_mpt_nibble_key mnk_fresh') (by simp [MptH.mnkSig]) (by simp [MptH.mnkSig])
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "nk") = some v)
    (E1 := fun v Γ q mm => E0 Γ q mm ∧ ∃ nb cnt : BitVec 64,
      v = .rStruct [.val (.word nb), .val (.word cnt)] ∧ Hooks.NIn Γ nb cnt)
    (L2 := fun _ => False) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s Γ q _ hL _ hE vs hvs
    have hev : evs s [lv (nm "m"), lv (nm "key"), lv (nm "klen")] =
        some [.val (.word M), .val (.word K), .val (.word KL)] :=
      evs_cons (ev_lw (hL (nm "m", M) (by simp [kv0])))
        (evs_cons (ev_lw (hL (nm "key", K) (by simp [kv0])))
          (evs_cons (ev_lw (hL (nm "klen", KL) (by simp [kv0]))) evs_nil))
    rw [hev] at hvs
    cases hvs
    refine ⟨Band4.mnk_argsOK rfl, fun x hx => argCells_any (by simp [MptH.mnkSig]) hx, fun _ KL' hKL' => ?_⟩
    simp only [argW, List.getElem?_cons_succ, List.getElem?_cons_zero, wordOf,
      Option.some.injEq] at hKL'
    subst hKL'
    exact hKL
  · intro s st vs1 callee r Γ Γ' q q' _ hL hvs _ hEs hLc _ co
    refine ⟨scrOld_nf0_co haC co rfl, fun v hv hsh => ?_⟩
    subst hv
    have hev : evs s [lv (nm "m"), lv (nm "key"), lv (nm "klen")] =
        some [.val (.word M), .val (.word K), .val (.word KL)] :=
      evs_cons (ev_lw (hL (nm "m", M) (by simp [kv0])))
        (evs_cons (ev_lw (hL (nm "key", K) (by simp [kv0])))
          (evs_cons (ev_lw (hL (nm "klen", KL) (by simp [kv0]))) evs_nil))
    rw [hev] at hvs
    cases hvs
    obtain ⟨Γ'', hx, hh2, hsc2, hEH, hroot, nb, cnt, hv0, hN⟩ :=
      mnk_post ha haC hCb haH hgr co rfl hKL hEs.1 hEs.2.1 hLc rfl
    exact ⟨Γ'', hx, hh2, hsc2, ⟨⟨hEH, hroot, Hooks.vInR_ext (ext_trans co.ext hx) hEs.2.2⟩, nb, cnt, hv0, hN⟩⟩
  · intro s st v hL hsh
    exact ⟨lkv_set (s := { st with locals := s.locals }) hL hmk _, by simp [setVarHOLFinite, FUPDATE]⟩
  intro nkv
  refine gp_decV ha.hH (x := nm "root")
    (L1 := fun w m => (LKV kv0 m ∧ m.lookup (nm "nk") = some nkv) ∧ m.lookup (nm "root") = some w)
    (E1 := fun w Γ q mm => (E0 Γ q mm ∧ ∃ nb cnt : BitVec 64,
      nkv = .rStruct [.val (.word nb), .val (.word cnt)] ∧ Hooks.NIn Γ nb cnt) ∧
      ∃ R : BitVec 64, w = .val (.word R) ∧ RF Γ R)
    (L2 := fun _ => False) (L3 := fun _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hL v hv
    exact ⟨⟨lkv_set (s := s) hL.1 hrt _, by rw [lk_set_ne _ _ (by decide)]; exact hL.2⟩,
      by simp [setVarHOLFinite, FUPDATE]⟩
  · intro s Γ q hs hL hh hE v hv
    have hm : s.locals.lookup (nm "m") = some (.val (.word M)) := hL.1 (nm "m", M) (by simp [kv0])
    have := Spec.Mpt.Dec.ev_ld hm 0 v hv
    refine ⟨hE, rd s.memory (M + BitVec.ofNat 64 0), this, ?_⟩
    have e : M + BitVec.ofNat 64 0 = M := by simp
    rw [e]
    exact hE.1.2.1
  intro w
  refine hoareG_conseq (P := GI a (fun m => (LKV kv0 m ∧ m.lookup (nm "nk") = some nkv) ∧
      m.lookup (nm "root") = some w) _)
    (Q := GPJ a (fun _ => False) Rv0) ?_ (fun t _ h => h) (fun r t _ _ h => gpF_of_gpj h)
  let InvM : State σ → Prop := fun t => ∃ W : BitVec 64,
    GI a (fun m => LKV kv0 m ∧ m.lookup (nm "root") = some (.val (.word W)))
      (fun Γ q _ => EH M Γ q ∧ Rt Γ W) t
  have hInv : ∀ t : State σ, (∃ v, GI a (fun m => LKV kv0 m ∧ m.lookup (nm "root") = some v)
      (fun Γ q _ => EH M Γ q ∧ ∃ W : BitVec 64, v = .val (.word W) ∧ Rt Γ W) t) → InvM t := by
    rintro t ⟨v, hL, Γ, q, he, hh, hsc, hEH, W, rfl, hRt⟩
    exact ⟨W, hL, Γ, q, he, hh, hsc, hEH, hRt⟩
  refine gpj_seq (Inv1 := InvM) ?_ ?_
  · refine hoareG_ite (hoareG_pre ?_ (fun s _ h => h.1)) (hoareG_pre ?_ (fun s _ h => h.1))
    · refine gpj_mono (gp_callAVC ha (x := nm "root") (f := nm "_mpt_delete_node") (sg' := Ins.delSig)
        (cs := brCaps) capSub_br_ins sumSpecA_delete_node_G (funSpec_true _) (by simp [Ins.delSig])
        (fun _ => rfl)
        (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "root") = some v)
        (E1 := fun v Γ q _ => EH M Γ q ∧ ∃ W : BitVec 64, v = .val (.word W) ∧ Rt Γ W)
        ?_ ?_ ?_) hInv
      · intro s Γ q hs hL hh hE vs hvs
        obtain ⟨⟨hE0, nb, cnt, hnk, hN⟩, R, hw, hR⟩ := hE
        have hrl : s.locals.lookup (nm "root") = some (.val (.word R)) := by rw [← hw]; exact hL.2
        have hnl : s.locals.lookup (nm "nk") = some (.rStruct [.val (.word nb), .val (.word cnt)]) := by
          rw [← hnk]; exact hL.1.2
        have hev : evs s [lv (nm "root"), .rfield 0 (lv (nm "nk")), .rfield 1 (lv (nm "nk")), cw 0] =
            some [.val (.word R), .val (.word nb), .val (.word cnt), .val (.word (BitVec.ofNat 64 0))] :=
          evs_cons (ev_lw hrl) (evs_cons (Spec.Mpt.Dec.ev_rfield_w hnl rfl)
            (evs_cons (Spec.Mpt.Dec.ev_rfield_w hnl rfl) (evs_cons (ev_cw s 0) evs_nil)))
        rw [hev] at hvs
        cases hvs
        refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x => argCells_fitsany (by simp [Ins.delSig]),
          fun _ => ⟨R, nb, cnt, BitVec.ofNat 64 0, rfl, by simp, hN⟩⟩
        rcases i with _ | _ | _ | _ | i
        · simp [Ins.delSig] at hpt hv
          subst hpt hv
          exact ⟨R, rfl, hR⟩
        · simp [Ins.delSig] at hpt hv; subst hpt; trivial
        · simp [Ins.delSig] at hpt hv; subst hpt; trivial
        · simp [Ins.delSig] at hpt hv; subst hpt; trivial
        · simp [Ins.delSig] at hpt
      · intro s st vs1 callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hhx hxt hhy hmo hnf
        refine ⟨hQ.1, fun v hv => ?_⟩
        have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
          (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hhx.2.1
        obtain ⟨w', hw, hRt⟩ := hQ.2 v hv q q' hq0 hhy.2.1
        exact ⟨eh_ext hE.1.1.1 hnf (heap_ord hhx) (heap_ord hhy) hmo, w', hw, hRt⟩
      · intro s st v hL hvalid
        exact ⟨lkv_set (s := { st with locals := s.locals }) hL.1.1 hrt _,
          by simp [setVarHOLFinite, FUPDATE]⟩
    · refine gpj_mono (gp_callAVC ha (x := nm "root") (f := nm "_mpt_insert_node") (sg' := Ins.insSig)
        (cs := insCaps) (by show capSub insCaps insCaps = true; decide) sumSpecA_insert_node_G
        (funSpec_true _) (by simp [Ins.insSig]) (fun _ => rfl)
        (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "root") = some v)
        (E1 := fun v Γ q _ => EH M Γ q ∧ ∃ W : BitVec 64, v = .val (.word W) ∧ Rt Γ W)
        ?_ ?_ ?_) hInv
      · intro s Γ q hs hL hh hE vs hvs
        obtain ⟨⟨hE0, nb, cnt, hnk, hN⟩, R, hw, hR⟩ := hE
        have hrl : s.locals.lookup (nm "root") = some (.val (.word R)) := by rw [← hw]; exact hL.2
        have hnl : s.locals.lookup (nm "nk") = some (.rStruct [.val (.word nb), .val (.word cnt)]) := by
          rw [← hnk]; exact hL.1.2
        have hev : evs s [lv (nm "root"), .rfield 0 (lv (nm "nk")), .rfield 1 (lv (nm "nk")), cw 0,
            lv (nm "vptr"), lv (nm "vlen")] =
            some [.val (.word R), .val (.word nb), .val (.word cnt), .val (.word (BitVec.ofNat 64 0)),
              .val (.word VP), .val (.word VL)] :=
          evs_cons (ev_lw hrl) (evs_cons (Spec.Mpt.Dec.ev_rfield_w hnl rfl)
            (evs_cons (Spec.Mpt.Dec.ev_rfield_w hnl rfl) (evs_cons (ev_cw s 0)
              (evs_cons (ev_lw (hL.1.1 (nm "vptr", VP) (by simp [kv0])))
                (evs_cons (ev_lw (hL.1.1 (nm "vlen", VL) (by simp [kv0]))) evs_nil)))))
        rw [hev] at hvs
        cases hvs
        refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x => argCells_fitsany (by simp [Ins.insSig]),
          fun _ => ⟨R, nb, cnt, BitVec.ofNat 64 0, VP, VL, rfl, by simp, hN, hE0.2.2⟩⟩
        rcases i with _ | _ | _ | _ | _ | _ | i
        · simp [Ins.insSig] at hpt hv
          subst hpt hv
          exact ⟨R, rfl, hR⟩
        · simp [Ins.insSig] at hpt hv; subst hpt; trivial
        · simp [Ins.insSig] at hpt hv; subst hpt; trivial
        · simp [Ins.insSig] at hpt hv; subst hpt; trivial
        · simp [Ins.insSig] at hpt hv; subst hpt; trivial
        · simp [Ins.insSig] at hpt hv; subst hpt; trivial
        · simp [Ins.insSig] at hpt
      · intro s st vs1 callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hhx hxt hhy hmo hnf
        refine ⟨hQ.1, fun v hv => ?_⟩
        have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
          (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hhx.2.1
        obtain ⟨w', hw, hRt⟩ := hQ.2 v hv q q' hq0 hhy.2.1
        exact ⟨eh_ext hE.1.1.1 hnf (heap_ord hhx) (heap_ord hhy) hmo, w', hw, hRt⟩
      · intro s st v hL hvalid
        exact ⟨lkv_set (s := { st with locals := s.locals }) hL.1.1 hrt _,
          by simp [setVarHOLFinite, FUPDATE]⟩
  · refine hoareG_ex (fun W => ?_)
    refine gp_seqJ (L := fun m => LKV kv0 m ∧ m.lookup (nm "root") = some (.val (.word W)))
      (E := fun Γ q mm => EH M Γ q ∧ RootOK Γ (rd mm M)) ?_ ?_
    · refine gp_store (E' := fun Γ q mm => EH M Γ q ∧ RootOK Γ (rd mm M)) ?_
      intro s Γ q hs hL hh hE w v mem hw hv hmem
      have hm : s.locals.lookup (nm "m") = some (.val (.word M)) := hL.1 (nm "m", M) (by simp [kv0])
      rw [ev_add2 (ev_lw hm) (ev_cw s 0)] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      have hwM : w = M := by rw [← hw]; simp
      rw [ev_lw hL.2] at hv
      cases hv
      have hmem' : mem = Struct.upd s.memory w W := Struct.store_word hmem
      have hmod : ModifiesOnly (· = w) s.memory mem := by
        rw [hmem']; exact Struct.modOnly_upd _ _ _
      refine ⟨heap_store_buf ha hh hmod (fun y hy => Or.inr (by rw [hy, hwM]; exact hE.1.2.2.2.1))
        (fun y hy => ?_), hE.1, ?_⟩
      · rw [hy, hwM]
        exact Or.inr (Or.inl (argCells_buf_at (i := 0) (n := 16) rfl rfl
          (overlap_of_in hM8 le_rfl (by omega))))
      · rw [hmem', hwM]
        simp only [Struct.rd_upd, if_true]
        exact rootOK_of_rt hE.2
    · refine hoareG_conseq (gp_ret ha.hH (L2 := fun _ => False) (E2 := fun _ _ _ => True) (Rv := Rv0) ?_)
        (fun t _ h => h) (fun r t _ _ h => gpjF_of_gp h)
      intro s Γ q hs hL he hh hE v hv
      rw [ev_cw] at hv
      cases hv
      exact ⟨retOK_nil, M, rfl, hE.1.1, hE.1.2.1, hE.1.2.2.1, hE.1.2.2.2.1, hE.1.2.2.2.2,
        fits_of_rt' (rootOK_of_rt hE.2)⟩

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.sumSpecA_mpt_set
