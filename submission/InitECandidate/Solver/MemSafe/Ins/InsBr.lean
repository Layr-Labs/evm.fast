import InitECandidate.Solver.MemSafe.Ins.InsExt3

set_option autoImplicit false

/-!
# Ladder leaf: the branch node (tag 3): `iBr`
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem ndT_br {Γ : Gam} {Nd K0 : BitVec 64} (h : NdT Γ Nd K0) (hK : K0 = 3) :
    ∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNBRANCH := by
  rcases h with ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩
  all_goals first | exact ⟨o, ho, hb, ht⟩ | (rw [hK] at h0; cases h0)

theorem iBrStop_G {sg : Sig} {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl K0 : BitVec 64} (hK0 : K0 = 3)
    (hV0 : Hooks.VInR Types.tVAL Γ0 VP VL)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (LKV ((nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
        (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ))
      (.seq (.store (.op .add [lv (nm "node"), cw 160]) (lv (nm "vptr")))
        (.seq (.store (.op .add [lv (nm "node"), cw 168]) (lv (nm "vlen")))
          (.assign .local (nm "r") (lv (nm "node")))))
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0 with hadef
  set kv := (nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 with hkv
  have mem : ∀ {p : MlS × BitVec 64}, p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 → p ∈ kv :=
    fun hp => List.mem_cons_of_mem _ hp
  have hnode : (nm "node", Nd) ∈ kv := mem (by simp [kvT, kvJ])
  have hvptr : (nm "vptr", VP) ∈ kv := mem (by simp [kvT, kvJ])
  have hvlen : (nm "vlen", VL) ∈ kv := mem (by simp [kvT, kvJ])
  have hT0 : ∀ p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0, p ∈ kv := fun p hp => mem hp
  have hEn : ∀ Γ, EK K KL Nd Lv Res Sl K0 Γ → ∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNBRANCH :=
    fun Γ h => ndT_br h.2 hK0
  refine gp_stPairK (haC := rfl) (haH := rfl) (k := 20) rfl rfl (x := nm "node") (B := Nd)
    (V1 := VP) (V2 := VL) (fun m h => h _ hnode) (fun s hL => ev_lw (hL _ hvptr))
    (fun s hL => ev_lw (hL _ hvlen)) (fun Γ q s hh hE => ?_) ?_
  · obtain ⟨o, ho, hb, ht⟩ := hEn Γ hE
    have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := by
      obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
      exact (hLy.1 o ho).2.2.2.1
    rw [ht, Types.ty_NBRANCH] at hsz
    simp only [Types.nbranchTy] at hsz
    have hs20 : o.HasSlot 20 := by unfold Obj.HasSlot; omega
    have hs21 : o.HasSlot 21 := by unfold Obj.HasSlot; omega
    have hcap : ∀ k, k = 20 ∨ k = 21 → ∃ c ∈ a.caps, c.g = anyG ∧ c.t = o.ty ∧ k ∈ c.ks :=
      fun k hk => ⟨⟨anyG, Types.tNBRANCH, [20, 21], false⟩, by simp [a, actOf, insCaps, brCaps, leafCaps],
        rfl, ht.symm, by simpa using hk⟩
    exact ⟨o, ho, hb, Or.inr ⟨ht, rfl⟩, Hooks.vInR_ext hh.2.2.2.1 hV0,
      foot_of_cap hh ha.hord0 ha.hsz0 ho hs20 (by rw [ht]; rfl) (hcap 20 (Or.inl rfl)),
      foot_of_cap hh ha.hord0 ha.hsz0 ho hs21 (by rw [ht]; rfl) (hcap 21 (Or.inr rfl))⟩
  refine gpj_of_gp (L := LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd 0 0 0))
    (E := fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ) ?_ (fun t ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ?_)
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have : v = .val (.word Nd) := Option.some.inj (hv.symm.trans (ev_lw (hL _ hnode)))
    subst this
    exact lkvT_r (extra_sub hL hT0)
  · obtain ⟨o, ho, hb, hty⟩ := hEn Γ hE
    exact mid_of_r hL he hh hsc (midF_setR hE.1
      (rt_of_ty (t := Types.tNBRANCH) (by simp [Node.nodeTys]) ⟨o, ho, hb, hty⟩))

theorem ev_childAddrI' {s : State σ} {br idx : MlS} {B I : BitVec 64}
    (hb : s.locals.lookup br = some (.val (.word B))) (hi : s.locals.lookup idx = some (.val (.word I))) :
    ev s (childAddrI br idx) = some (.val (.word (B + (32 + I * 8)))) := by
  unfold childAddrI
  rw [ev_add3 (ev_lw hb) (ev_cw s 32) (ev_mul2 (ev_lw hi) (ev_cw s 8))]
  simp

theorem addr_eq {I : BitVec 64} (hI : I.toNat < 16) :
    BitVec.ofNat 64 (32 + 8 * I.toNat) = 32 + I * 8 := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have h32 : (32 : BitVec 64).toNat = 32 := rfl
  have h8 : (8 : BitVec 64).toNat = 8 := rfl
  rw [h32, h8]
  omega

theorem iBrGo_G {sg : Sig}
    {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl K0 : BitVec 64} (hK0 : K0 = 3) (hLt : Lv.toNat < KL.toNat)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (LKV ((nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
        (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ))
      iBrGo
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0 with hadef
  set kvK := (nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 with hkvK
  have mem : ∀ {p : MlS × BitVec 64}, p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 → p ∈ kvK :=
    fun hp => List.mem_cons_of_mem _ hp
  have hkey : (nm "key", K) ∈ kvK := mem (by simp [kvT, kvJ])
  have hlevel : (nm "level", Lv) ∈ kvK := mem (by simp [kvT, kvJ])
  have hfrK : ∀ p ∈ kvK, p.1 ≠ nm "idx" := by
    intro p hp
    simp only [hkvK, kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil,
      or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      (dsimp only; decide)
  unfold iBrGo
  refine gp_decVJ ha.hH (Inv := Mid a K KL VP VL)
    (L1 := fun v m => LKV kvK m ∧ m.lookup (nm "idx") = some v ∧ ∃ I : BitVec 64, v = .val (.word I))
    (E1 := fun v Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ ∀ I : BitVec 64, v = .val (.word I) → I.toNat < 16)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun I hI => ?_⟩) ?_
    (fun t o h => mid_res ha.hH (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl))))) o h)
  · obtain ⟨w, rfl, -⟩ := ev_loadByte_word hv
    exact ⟨lkv_set (s := s) hL hfrK _, by simp [setVarHOLFinite, FUPDATE], _, rfl⟩
  · have hev : ev s kA = some (.val (.word (K + Lv))) :=
      ev_add2 (ev_lw (hL _ hkey)) (ev_lw (hL _ hlevel))
    obtain ⟨w', hw', hlt16⟩ := ldb_lt16 hh'.1 hE.1.1.2.2.2.2 hLt hev hv
    rw [hw'] at hI
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hI
    subst hI
    exact hlt16
  intro v
  by_cases hw : ∃ I : BitVec 64, v = .val (.word I)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨I, rfl⟩ := hw
  have hnodeM : (nm "node", Nd) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
  have hnodeR : (nm "node", Nd) ∈ kvT K KL VP VL Nd Lv Res Sl 0 Nd 0 0 0 := by simp [kvT, kvJ]
  refine hoareG_pre (P := GI a (fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0) m ∧
      m.lookup (nm "idx") = some (.val (.word I)))
    (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ I.toNat < 16)) ?_
    (fun s _ ⟨⟨hL, hidx, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨⟨extra_sub hL (fun p hp => mem hp), hidx⟩,
      Γ, q, he, hh, hsc, hE.1, hE.2 I rfl⟩)
  -- `r = node`
  refine gp_seqJ (L := fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd 0 0 0) m ∧
      m.lookup (nm "idx") = some (.val (.word I)))
    (E := fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ I.toNat < 16) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    have : v = .val (.word Nd) := Option.some.inj (hv.symm.trans (ev_lw (hL.1 _ hnodeM)))
    subst this
    exact ⟨lkvT_r hL.1, by rw [lk_keep (by decide) hL.2]⟩
  -- `next_node = lds (node + 32 + idx * 8)`
  refine gpj_seq (Inv1 := fun t => ∃ W3 : BitVec 64, GI a (fun m =>
      LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 0 0) m ∧ m.lookup (nm "idx") = some (.val (.word I)))
    (fun Γ _ _ => (EK K KL Nd Lv Res Sl K0 Γ ∧ I.toNat < 16) ∧ Fits Γ Types.nodeU W3) t) ?_ ?_
  · refine gpj_mono (gp_assignAV (L1 := fun (v : ValueHOL 64) m => ∃ W3 : BitVec 64, v = .val (.word W3) ∧
        (LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 0 0) m ∧ m.lookup (nm "idx") = some (.val (.word I))))
      (E1 := fun (v : ValueHOL 64) Γ _ _ => (EK K KL Nd Lv Res Sl K0 Γ ∧ I.toNat < 16) ∧
        ∃ W3 : BitVec 64, v = .val (.word W3) ∧ Fits Γ Types.nodeU W3)
      ha.hH (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh hE v hv => ?_)) ?_
    · have hev := ev_childAddrI' (hL.1 (nm "node", Nd) hnodeR) hL.2
      have hv' := MemSafe.HtabEntries.ev_ld hev hv
      subst hv'
      exact ⟨_, rfl, lkvT_nn hL.1, by rw [lk_keep (by decide) hL.2]⟩
    · have hev := ev_childAddrI' (hL.1 (nm "node", Nd) hnodeR) hL.2
      have hv' := MemSafe.HtabEntries.ev_ld hev hv
      refine ⟨hE, _, hv', ?_⟩
      have := br_child_fits hh.1 (ndT_br hE.1.2 hK0) hE.2
      show Fits Γ Types.nodeU (rd s.memory (Nd + (32 + I * 8)))
      rw [← addr_eq hE.2]
      exact this
    · rintro t ⟨v, ⟨W3, rfl, hlk⟩, Γ, q, he, hh, hsc, hE, W3', hW', hf⟩
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW'
      subst hW'
      exact ⟨W3, hlk, Γ, q, he, hh, hsc, ⟨hE, hf⟩⟩
  · refine hoareG_ex fun W3 => ?_
    have hnodeN : (nm "node", Nd) ∈ kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 0 0 := by simp [kvT, kvJ]
    have hlevN : (nm "level", Lv) ∈ kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 0 0 := by simp [kvT, kvJ]
    refine gpj_of_gp (L := fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 1 Nd W3 (Nd + (32 + I * 8))
        (Lv + BitVec.ofNat 64 1)) m ∧ m.lookup (nm "idx") = some (.val (.word I)))
      (E := fun Γ _ _ => (EK K KL Nd Lv Res Sl K0 Γ ∧ I.toNat < 16) ∧ Fits Γ Types.nodeU W3) ?_ ?_
    · refine gp_seq (L := fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 (Nd + (32 + I * 8)) 0) m ∧
          m.lookup (nm "idx") = some (.val (.word I)))
        (E := fun Γ _ _ => (EK K KL Nd Lv Res Sl K0 Γ ∧ I.toNat < 16) ∧ Fits Γ Types.nodeU W3) ?_ ?_
      · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
        have : v = .val (.word (Nd + (32 + I * 8))) :=
          Option.some.inj (hv.symm.trans (ev_childAddrI' (hL.1 (nm "node", Nd) hnodeN) hL.2))
        subst this
        exact ⟨lkvT_ns hL.1, by rw [lk_keep (by decide) hL.2]⟩
      refine gp_seq (L := fun m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 Nd W3 (Nd + (32 + I * 8))
          (Lv + BitVec.ofNat 64 1)) m ∧ m.lookup (nm "idx") = some (.val (.word I)))
        (E := fun Γ _ _ => (EK K KL Nd Lv Res Sl K0 Γ ∧ I.toNat < 16) ∧ Fits Γ Types.nodeU W3) ?_ ?_
      · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
        have : v = .val (.word (Lv + BitVec.ofNat 64 1)) :=
          Option.some.inj (hv.symm.trans (ev_add_cw (hL.1 (nm "level", Lv) (by simp [kvT, kvJ])) 1))
        subst this
        exact ⟨lkvT_nl hL.1, by rw [lk_keep (by decide) hL.2]⟩
      · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
        have : v = .val (.word 1) := by
          have := ev_cw (σ := σ) s 1
          rw [this] at hv; exact (Option.some.inj hv).symm
        subst this
        exact ⟨lkvT_go hL.1, by rw [lk_keep (by decide) hL.2]⟩
    · intro t ⟨hL, Γ, q, he, hh, hsc, hE⟩
      obtain ⟨o, ho, hb, hty⟩ := ndT_br hE.1.1.2 hK0
      obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
      have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hLy.1 o ho).2.2.2.1
      obtain ⟨hs1, hs2⟩ := nbranch_slot hty hsz (j := 4 + I.toNat) (by omega) (by omega)
      have hKL := KL.isLt
      have hnl : (Lv + BitVec.ofNat 64 1).toNat ≤ KL.toNat := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
        simp only [Nat.mod_eq_of_lt (show 1 < 2 ^ 64 by omega)]; omega
      refine ⟨Nd, Lv, Res, Sl, 1, Nd, W3, Nd + (32 + I * 8), Lv + BitVec.ofNat 64 1, hL.1, Γ, q, he, hh,
        hsc, hE.1.1.1.1, rt_of_ty (t := Types.tNBRANCH) (by simp [Node.nodeTys]) ⟨o, ho, hb, hty⟩,
        hE.2, Or.inr ⟨o, ho, 4 + I.toNat, hs1, ?_, ?_⟩, hnl⟩
      · rw [nbranch_child hty (by omega) (by omega)]
      · unfold Obj.cell; rw [hb, show 8 * (4 + I.toNat) = 32 + 8 * I.toNat by omega, addr_eq hE.1.2]

theorem iBr_G {sg : Sig}
    {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl K0 : BitVec 64} (hK0 : K0 = 3) (hLv : Lv.toNat ≤ KL.toNat)
    (hV0 : Hooks.VInR Types.tVAL Γ0 VP VL)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (LKV ((nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
        (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ))
      iBr
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  have hlv : (nm "level", Lv) ∈ (nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by
    simp [kvT, kvJ]
  have hkl : (nm "klen", KL) ∈ (nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by
    simp [kvT, kvJ]
  unfold iBr
  refine ite_val2 hlv hkl (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
  · exact iBrStop_G ha hK0 hV0
  · have hne : Lv ≠ KL := by
      intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
    have hlt : Lv.toNat < KL.toNat := by
      have : Lv.toNat ≠ KL.toNat := fun h => hne (BitVec.eq_of_toNat_eq h)
      omega
    exact iBrGo_G ha hK0 hlt

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.iBrStop_G
#print axioms InitECandidate.Solver.MemSafe.Ins.iBr_G
