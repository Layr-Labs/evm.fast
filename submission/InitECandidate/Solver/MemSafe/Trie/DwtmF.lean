import InitECandidate.Solver.MemSafe.Trie.MptNew
import InitECandidate.Solver.MemSafe.Dn.Dwtm

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `decode_witness_to_mpt` with its return typed

`sumSpecA_dwtm_F`: the proof of `Dn.sumSpecA_dwtm_G` repeated at the signature
`dwFSig = ⟨[any, any], [fits nodeU], [], true⟩`: the returned root (`0` or the decoder's node) fits `nodeU`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

theorem fits0 (Γ : Gam) : Fits Γ Types.nodeU (BitVec.ofNat 64 0) := by
  left; show (BitVec.ofNat 64 0).toNat < nullMax; decide

def dwFSig : Sig := ⟨[.any, .any], [.fits Types.nodeU], [], true⟩

theorem sumSpecA_dwtm_F :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_witness_to_mpt")
      dwFSig DwTPre (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ R : BitVec 64, v = .val (.word R) ∧ Fits Γ' Types.nodeU R) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun _ _ Γ' _ _ v => ∃ R : BitVec 64, v = .val (.word R) ∧ Fits Γ' Types.nodeU R) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen Band.code_dwtm hl
  obtain ⟨⟨DB, rh, rfl, pq, hpq, hord, hW⟩, DB', rh', hvs', hND⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl⟩ := hvs'
  rw [hh.2.1] at hpq
  cases hpq
  have hA := (hbind 0 (by decide) (by simp)).1
  have hB := (hbind 1 (by decide) (by simp)).1
  let L0 : LocalsH → Prop := fun m => m.lookup (nm "db") = some (.val (.word DB)) ∧
    m.lookup (nm "root_hash") = some rh
  let E0 : Gam → Ptrs → Mem → Prop := fun Γ q M => q = p0 ∧ Spec.Mpt.Leaves.NdbW DB p0.hp M ∧
    Hooks.NdbR Γ M DB
  refine hoareG_conseq (P := GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dwFSig []
      [.val (.word DB), rh] s0 Γ0 p0) L0 E0)
    (Q := GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dwFSig []
      [.val (.word DB), rh] s0 Γ0 p0) (fun _ => False) (fun _ _ _ => True)
      (fun Γ q _ v => RetOK Γ p0 q [.val (.word DB), rh] dwFSig.ret v ∧
        ∃ R : BitVec 64, v = .val (.word R) ∧ Fits Γ Types.nodeU R)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hA, by rw [hloc]; exact hB⟩, Γ0, p0, ext_refl _, hh,
      scrOld_refl _, rfl, hW, hND⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', e1, e2, e3, e4⟩ := gp_final h r' hr hna
    exact ⟨Γ', p', e1, e2, e3, fun v hv => e4 v hv⟩
  unfold Band.dwtmBody
  -- `var is_empty = memeq(…)`: memory and pointers unchanged
  refine gp_decCall ha (sumA_of_csumm memeq_R)
    ((Spec.Mpt.Leaves.ndb_mw hX Spec.Mpt.Leaves.memeq_mem').and
      (Spec.Mpt.Leaves.ndb_ptrs hX Spec.Mpt.Leaves.memeq_mem')) (by simp) (fun _ => rfl)
    (L1 := fun _ m => L0 m) (E1 := fun _ Γ q M => E0 Γ q M) (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv _ => ?_⟩)
    (fun s st v hL hsh => ⟨lk_keep (by decide) hL.1, lk_keep (by decide) hL.2⟩)
    ?_ (fun _ _ _ h => h.elim)
  · obtain ⟨hm, hp⟩ := hLc
    have h1 : ptrsOf st = some q :=
      hp.trans ((Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans
        co.heap0.2.1)
    rw [co.heap.2.1] at h1
    cases h1
    exact ⟨hE.1, by rw [hm]; exact hE.2.1, ndbR_co rfl rfl co hE.2.2⟩
  intro v1
  refine gp_seq (L := L0) (E := E0) (hoareG_ite (hoareG_pre (gp_ret ha.hH
    (fun s Γ q _ _ _ _ _ v hv => by
      rw [ev_cw] at hv; cases hv
      exact ⟨retOK_fits1 (fits0 Γ), _, rfl, fits0 Γ⟩)) (fun s _ h => h.1)) (gp_skip fun s h => h.1)) ?_
  -- `var r = nodedb_lookup(db, root_hash)`: a located slice
  refine gp_decCall ha (sumA_of_csumm nodedbLookup_R)
    ((Spec.Mpt.Leaves.ndb_mw hX Spec.Mpt.Leaves.nodedb_lookup_mem).and
      ((Spec.Mpt.Leaves.ndb_ptrs hX Spec.Mpt.Leaves.nodedb_lookup_mem).and
        ((Spec.Mpt.Leaves.funSpec_nodedb_lookup_ret hX).and (funSpec_nodedb_lookup_leaf hX)))) (by simp) (fun _ => rfl)
    (L1 := fun v m => (∃ x y z : BitVec 64,
      v = .rStruct [.val (.word x), .val (.word y), .val (.word z)]) ∧
      m.lookup (nm "r") = some v ∧ L0 m)
    (E1 := fun v Γ q M => E0 Γ q M ∧ Spec.Mpt.Leaves.NlRet p0.hp v ∧
      ∀ x y z : BitVec 64, v = .rStruct [.val (.word x), .val (.word y), .val (.word z)] →
        Hooks.VInR Types.tVAL Γ y z) (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv _ => ?_⟩)
    (fun s st v hL hsh => ⟨w3_of_sh hsh, by simp [setVarHOLFinite, FUPDATE],
      lk_keep (by decide) hL.1, lk_keep (by decide) hL.2⟩)
    ?_ (fun _ _ _ h => h.elim)
  · obtain ⟨hm, hp, hret, hleaf⟩ := hLc
    rw [evs_cons (ev_lw hL.1) (evs_cons (by rw [ev_lv]; exact hL.2) evs_nil)] at hvs
    cases hvs
    have h1 : ptrsOf st = some q :=
      hp.trans ((Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans
        co.heap0.2.1)
    rw [co.heap.2.1] at h1
    cases h1
    refine ⟨⟨hE.1, by rw [hm]; exact hE.2.1, ndbR_co rfl rfl co hE.2.2⟩,
      hret v hv DB rh p0.hp rfl hE.2.1, fun x y z hvv => ?_⟩
    exact Hooks.vInR_ext co.ext (vin_of_lookup hE.2.2 (hleaf v hv DB rh rfl) hvv)
  intro v
  by_cases hw : ∃ x y z : BitVec 64, v = .rStruct [.val (.word x), .val (.word y), .val (.word z)]
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨x, y, z, rfl⟩ := hw
  by_cases hx0 : x = 0
  · refine gp_seq (L := fun _ => False) (E := fun _ _ _ => True)
      (hoareG_ite (hoareG_pre (gp_fail ha 1) (fun s _ h => h.1)) (hoareG_false fun s _ h => ?_))
      (hoareG_false fun s _ h => h.1)
    exact Spec.Mpt.Dec.ne_of_else (Spec.Mpt.Dec.ev_rfield_w (i := 0) h.1.1.2.1 rfl) h.2
      (by rw [hx0]; rfl)
  refine gp_seq (hoareG_ite (hoareG_pre (gp_fail ha 1) (fun s _ h => h.1))
    (gp_skip fun s h => h.1)) ?_
  -- `var nd = _decode_witness_node(db, r.1, r.2)`
  refine gp_decCall ha sumSpecA_dwn_G (funSpec_true _) (by simp [bdSig]) (fun _ => rfl)
    (L1 := fun v m => (∃ ND : BitVec 64, v = .val (.word ND)) ∧ m.lookup (nm "nd") = some v ∧
      m.lookup (nm "root_hash") = some rh)
    (E1 := fun v Γ _ _ => ∀ ND : BitVec 64, v = .val (.word ND) → Fits Γ Types.nodeU ND)
    (L2 := fun _ => False)
    (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨hQ.1,
      fun v hv _ ND hND => by subst hND; exact co.ret _ hv 0 _ ND rfl (by simp [flattenHOL])⟩)
    (fun s st v hL hsh => ⟨val_of_shapeEq_one' hsh, by simp [setVarHOLFinite, FUPDATE],
      lk_keep (by decide) hL.2.2.2⟩)
    ?_ (fun _ _ _ h => h.elim)
  · have hvs' : evs s [lv (nm "db"), .rfield 1 (lv (nm "r")), .rfield 2 (lv (nm "r"))] =
        some [.val (.word DB), .val (.word y), .val (.word z)] :=
      evs_cons (ev_lw hL.2.2.1) (evs_cons (Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2.1 rfl)
        (evs_cons (Spec.Mpt.Dec.ev_rfield_w (i := 2) hL.2.1 rfl) evs_nil))
    rw [hvs'] at hvs
    cases hvs
    obtain ⟨⟨hq, hNdb, hNR⟩, hnl, hvin⟩ := hE
    obtain ⟨hy1, hy2⟩ := hnl x y z rfl hx0
    have hVI := hvin x y z rfl
    subst hq
    exact ⟨(anyArgsG (by simp [bdSig]) rfl hvs').1, fun c hc => argCells_any (by simp [bdSig]) hc,
      fun callee => ⟨Band.decPre_congr rfl rfl
        ⟨DB, y, z, rfl, ⟨q, hh'.2.1, heap_ord hh'⟩, q.hp, q, hh'.2.1, hy1, hy2, le_rfl, hNdb⟩,
        DB, y, z, rfl, hNR, hVI⟩⟩
  intro v
  by_cases hw : ∃ ND : BitVec 64, v = .val (.word ND)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨ND, rfl⟩ := hw
  refine gp_seq (L := fun m => m.lookup (nm "nd") = some (.val (.word ND)))
    (E := fun Γ _ _ => Fits Γ Types.nodeU ND) (hoareG_ite ?_ (gp_skip fun s h => by
      obtain ⟨⟨_, hnd, _⟩, Γ, q, he, hh', hsc, hE⟩ := h.1
      exact ⟨hnd, Γ, q, he, hh', hsc, hE ND rfl⟩))
    (gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => by
      rw [ev_lw hL] at hv; cases hv
      exact ⟨retOK_fits1 hE, ND, rfl, hE⟩))
  refine hoareG_pre ?_ (fun s _ h => h.1)
  -- `var h = alloc(32)`: a fresh block
  refine gp_decCall ha (sumA_of_csumm alloc_R) (funSpec_true _) (by simp) (fun _ => rfl)
    (L1 := fun v m => (∃ H : BitVec 64, v = .val (.word H)) ∧ m.lookup (nm "h") = some v ∧
      m.lookup (nm "nd") = some (.val (.word ND)) ∧ m.lookup (nm "root_hash") = some rh)
    (E1 := fun v Γ q M => Fits Γ Types.nodeU ND ∧ ∀ H : BitVec 64, v = .val (.word H) →
      ∀ c : BitVec 64, Overlap H.toNat 32 c → ¬ InObj Γ c.toNat ∧ q.Allocated c.toNat ∧
        ¬ p0.Allocated c.toNat)
    (L2 := fun m => m.lookup (nm "nd") = some (.val (.word ND)))
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv _ => ⟨fits_ext co.ext (hE ND rfl), fun H hH c hc => ?_⟩⟩)
    (fun s st v hL hsh => ⟨val_of_shapeEq_one' hsh, by simp [setVarHOLFinite, FUPDATE],
      lk_keep (by decide) hL.2.1, lk_keep (by decide) hL.2.2⟩)
    ?_ (fun m0 m _ h2 => by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h2)
  · rw [evs_cons (ev_cw s 32) evs_nil] at hvs
    cases hvs
    subst hH
    obtain ⟨w, hw, hfb⟩ := co.ret _ hv 0 _ H rfl (by simp [flattenHOL])
    simp only [argW, List.getElem?_cons_zero, wordOf, Option.some.injEq] at hw
    subst hw
    have e32 : 1 * (BitVec.ofNat 64 32).toNat + 0 = 32 := by decide
    rw [e32] at hfb
    obtain ⟨hfr, hni⟩ := hfb.2 c hc
    obtain ⟨hna, hal⟩ := fresh_na (heap_ord co.heap0) (heap_ord co.heap) co.mono hfr
    exact ⟨hni, hal, fun h0 => hna (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 h0)⟩
  intro v
  by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨H, rfl⟩ := hw
  -- `memcpy(h, root_hash, 32)` into the fresh block
  refine gp_seq (gp_callF ha (sumA_of_csumm memcpy_R) (funSpec_true _)
    (by simp [Helpers.sigMemcpy]) (fun _ => rfl) (E' := fun Γ _ _ => Fits Γ Types.nodeU ND)
    (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ hext hh'' hnfp =>
      ⟨scrOld_of_nf0 (layout_of_heap rfl hh'') (hnfp rfl), fun _ => fits_ext hext hE.1⟩)) ?_
  · have hvs' : evs s [lv (nm "h"), lv (nm "root_hash"), cw 32] =
        some [.val (.word H), rh, .val (.word (BitVec.ofNat 64 32))] :=
      evs_cons (ev_lw hL.2.1) (evs_cons (by rw [ev_lv]; exact hL.2.2.2) (evs_cons (ev_cw s 32) evs_nil))
    rw [hvs'] at hvs
    cases hvs
    have e32 : 1 * (BitVec.ofNat 64 32).toNat + 0 = 32 := by decide
    refine ⟨argsOK_memcpyV (fun c hc => ?_), fun c hc => ?_, fun _ => trivial⟩
    · rw [e32] at hc
      obtain ⟨h1, h2, -⟩ := hE.2 H rfl c hc
      exact Or.inr ⟨h1, h2⟩
    · have hc' := argCells_memcpyV hc
      rw [e32] at hc'
      exact Or.inr (Or.inr (Or.inl (hE.2 H rfl c hc').2.2))
  -- `st nd + 24, h`: slot 3 of the node
  exact gp_post (gp_stSCH ha rfl (E' := fun Γ _ _ => Fits Γ Types.nodeU ND) (x := nm "nd") (j := 3) (B := ND)
    (fun m h => h.2.2.1) (by simp only [nullMax]; omega)
    (fun s Γ q hh' hE => nodeU_slot hh' hE ⟨by decide, le_refl _⟩)
    (fun s v hL hv => isW_ev ⟨H, hL.2.1⟩ v hv) (fun s Γ q V hL hh hE _ _ _ _ => hE))
    (fun m h => h.2.2.1) (fun Γ q M h => h)

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.sumSpecA_dwtm_F
