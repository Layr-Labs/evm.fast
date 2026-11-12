import InitECandidate.Solver.MemSafe.Ins.DelKit

set_option autoImplicit false

/-!
# `_collapse_branch`: the single-child case `colOne`

`child = ld (node + 32 + 8 * idx)` (`idx < 16`, so a child cell: it fits `nodeU`), `ck = ld child`,
the nibble `idx` is stored in a fresh 8-byte `alloc` block `nib`, then `child` is merged:
a branch child gets an extension `node_new_ext(nib, 1, child)`, a leaf / extension child gets
`nibbles_concat(nib, 1, child.nib, child.nib_len)` as its new nibble array.

After the config stage `nib` and `cat` must be adopted as `` objects (their bytes are `idx < 16`
resp. nibbles).
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

def colSig : Sig := ⟨[.fits Types.nodeU], [.fits Types.nodeU], [], true⟩

def ColPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ N : BitVec 64, vs = [.val (.word N)] ∧ CbE N Γ

/-- Locals at `colOne`. -/
def kvCV (N C X VL : BitVec 64) : List (MlS × BitVec 64) := (nm "vl", VL) :: kvCB N C X 16

theorem cbE_ext {N : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ') (h : CbE N Γ) : CbE N Γ' :=
  obT_ext he h

theorem ev_childAddrI_eq {s : State σ} {br idx : MlS} {B I : BitVec 64}
    (hb : s.locals.lookup br = some (.val (.word B))) (hi : s.locals.lookup idx = some (.val (.word I))) :
    ev s (childAddrI br idx) = some (.val (.word (B + (32 + I * 8)))) := by
  unfold childAddrI
  rw [ev_add3 (ev_lw hb) (ev_cw s 32) (ev_mul2 (ev_lw hi) (ev_cw s 8))]
  simp

theorem childAddr_eq {B I : BitVec 64} (hI : I.toNat < 16) :
    B + (32 + I * 8) = B + BitVec.ofNat 64 (32 + 8 * I.toNat) := by
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have h32 : (32 : BitVec 64).toNat = 32 := rfl
  have h8 : (8 : BitVec 64).toNat = 8 := rfl
  rw [h32, h8]
  omega

/-- The child of a branch at a loop index fits `nodeU`. -/
theorem child_fits {Γ : Gam} {s : State σ} (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    {N I : BitVec 64} (hb : CbE N Γ) (hI : I.toNat < 16) :
    Fits Γ Types.nodeU (rd s.memory (N + (32 + I * 8))) := by
  rw [childAddr_eq hI]
  exact br_child_fits hG hb hI

theorem colOne_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] vs s0 Γ0 p0) guestCtx)
    {N C X VL : BitVec 64} (hX : X.toNat < 16) :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] vs s0 Γ0 p0)
        (LKV (kvCV N C X VL)) (fun Γ _ _ => CbE N Γ))
      cbOne
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] vs s0 Γ0 p0)
        (fun _ => False) (fun _ _ _ => False)
        (fun Γ' p' _ v => RetOK Γ' p0 p' vs [.fits Types.nodeU] v ∧
          ∃ w, v = .val (.word w) ∧ Rt Γ' w)) := by
  have hX0 := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  set kv0 := kvCV N C X VL with hkv0
  have hnode : (nm "node", N) ∈ kv0 := by simp [kv0, kvCV, kvCB]
  have hidx : (nm "idx", X) ∈ kv0 := by simp [kv0, kvCV, kvCB]
  have hfch : ∀ p ∈ kv0, p.1 ≠ nm "child" := by
    intro p hp
    simp only [kv0, kvCV, kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  unfold cbOne
  -- `var child = lds (node + 32 + 8 * idx)`
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kv0 m ∧ m.lookup (nm "child") = some v ∧ ∃ CH : BitVec 64, v = .val (.word CH))
    (E1 := fun v Γ _ _ => CbE N Γ ∧ ∀ CH : BitVec 64, v = .val (.word CH) → Fits Γ Types.nodeU CH)
    (L2 := fun _ => False) (E2 := fun _ _ _ => False)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun CH hCH => ?_⟩) ?_
    (fun _ _ _ h => h.elim)
  · have := MemSafe.HtabEntries.ev_ld (ev_childAddrI_eq (hL _ hnode) (hL _ hidx)) hv
    exact ⟨lkv_set (s := s) hL hfch v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := MemSafe.HtabEntries.ev_ld (ev_childAddrI_eq (hL _ hnode) (hL _ hidx)) hv
    rw [hv'] at hCH
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hCH
    subst hCH
    exact child_fits hh'.1 hE hX
  intro v
  by_cases hw : ∃ CH : BitVec 64, v = .val (.word CH)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨CH, rfl⟩ := hw
  set kvH : List (MlS × BitVec 64) := (nm "child", CH) :: kv0 with hkvH
  let EH : Gam → Prop := fun Γ => CbE N Γ ∧ Fits Γ Types.nodeU CH
  have hEHx : ∀ Γ Γ', Ext Γ Γ' → EH Γ → EH Γ' := fun Γ Γ' he h => ⟨cbE_ext he h.1, fits_ext he h.2⟩
  refine hoareG_pre (P := GI a (LKV kvH) (fun Γ _ _ => EH Γ)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 CH rfl⟩)
  have hchK : (nm "child", CH) ∈ kvH := by simp [kvH]
  have hfck : ∀ p ∈ kvH, p.1 ≠ nm "ck" := by
    intro p hp
    simp only [kvH, kv0, kvCV, kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  -- `var ck = lds (child + 0)`
  refine gp_decV ha.hH
    (L1 := fun v m => LKV kvH m ∧ m.lookup (nm "ck") = some v ∧ ∃ K0 : BitVec 64, v = .val (.word K0))
    (E1 := fun v Γ _ _ => EH Γ ∧ ∀ K0 : BitVec 64, v = .val (.word K0) → NdT Γ CH K0)
    (L2 := fun _ => False) (E2 := fun _ _ _ => False)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun K0 hK0 => ?_⟩) ?_
    (fun _ _ _ h => h.elim)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hchK) 0 v hv
    exact ⟨lkv_set (s := s) hL hfck v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · obtain ⟨o, ho, hb, ht⟩ := node_real ha hs (k := 0) (by omega) hE.2 (hL _ hchK) hv
    have hv' := Spec.Mpt.Dec.ev_ld (hL _ hchK) 0 v hv
    rw [hv'] at hK0
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hK0
    subst hK0
    have := ndT_of_obj hh'.1 ho ht
    rw [hb] at this
    simpa using this
  intro v
  by_cases hw : ∃ K0 : BitVec 64, v = .val (.word K0)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨K0, rfl⟩ := hw
  set kvK : List (MlS × BitVec 64) := (nm "ck", K0) :: kvH with hkvK
  let EK : Gam → Prop := fun Γ => EH Γ ∧ NdT Γ CH K0
  have hEKx : ∀ Γ Γ', Ext Γ Γ' → EK Γ → EK Γ' := fun Γ Γ' he h => ⟨hEHx _ _ he h.1, ndT_ext he h.2⟩
  refine hoareG_pre (P := GI a (LKV kvK) (fun Γ _ _ => EK Γ)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 K0 rfl⟩)
  have hkm : (nm "ck", K0) ∈ kvK := by simp [kvK]
  have hchK2 : (nm "child", CH) ∈ kvK := List.mem_cons_of_mem _ hchK
  -- the hashed case
  refine gp_seq (L := LKV kvK) (E := fun Γ _ _ => EK Γ ∧ K0 ≠ 0) ?_ ?_
  · refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
    · refine gp_call ha (sumA_of_csumm mptFail_R) (funSpec_of_funRet (funRet_mpt_fail hX0))
        (by simp) (by simp)
        (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
          fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
        (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
          ⟨scrOld_nf0_co haC co rfl, fun ⟨v, hv⟩ => (hLc v hv).elim⟩)
    · have hne : K0 ≠ 0 := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      exact gp_skip fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE, hne⟩
  let EQ : Gam → Prop := fun Γ => EK Γ ∧ K0 ≠ 0
  have hEQx : ∀ Γ Γ', Ext Γ Γ' → EQ Γ → EQ Γ' := fun Γ Γ' he h => ⟨hEKx _ _ he h.1, h.2⟩
  have hfnib : ∀ p ∈ kvK, p.1 ≠ nm "nib" := by
    intro p hp
    simp only [kvK, kvH, kv0, kvCV, kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  -- `var nib = alloc(8)`
  refine gp_decCall ha (sumA_of_csumm alloc_R) (MemSafe.allocSpec_alloc hX0) (by simp) (fun _ => rfl)
    (L1 := fun v m => LKV kvK m ∧ m.lookup (nm "nib") = some v ∧ ∃ H : BitVec 64, v = .val (.word H))
    (E1 := fun v Γ q M => EQ Γ ∧ ∀ H : BitVec 64, v = .val (.word H) →
      (∀ c : BitVec 64, Overlap H.toNat 8 c → ¬ InObj Γ c.toNat ∧ q.Allocated c.toNat ∧
        ¬ p0.Allocated c.toNat) ∧ H.toNat % 8 = 0 ∧ heapBase ≤ H.toNat ∧ H.toNat + 8 ≤ q.hp)
    (L2 := fun _ => False) (E2 := fun _ _ _ => False)
    (fun s Γ q _ hL hh' hE vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co => ⟨scrOld_nf0_co haC co rfl,
      fun v hv _ => ⟨hEQx _ _ co.ext hE, fun H hH => ?_⟩⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfnib v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun _ _ _ h => h.elim)
  · rw [evs_cons (ev_cw s 8) evs_nil] at hvs
    cases hvs
    subst hH
    subst hv
    obtain ⟨w, hw, hfb⟩ := co.ret _ rfl 0 _ H rfl (by simp [flattenHOL])
    simp only [argW, List.getElem?_cons_zero, wordOf, Option.some.injEq] at hw
    subst hw
    have e8 : 1 * (BitVec.ofNat 64 8).toNat + 0 = 8 := by decide
    rw [e8] at hfb
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨-, -, p', hp', hord', hmo, hq⟩ := hLc (by simp [Good]) _ q rfl hpe (heap_ord co.heap0)
    obtain ⟨Q8, hQ8, h8', ⟨hb1, hb2⟩, -⟩ := hq _ rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hQ8
    subst hQ8
    have hq' : p' = q' := by
      have := co.heap.2.1
      rw [hp'] at this
      exact Option.some.inj this
    subst hq'
    refine ⟨fun c hc => ?_, h8', hb1, by simpa using hb2⟩
    obtain ⟨hfr, hni⟩ := hfb.2 c hc
    obtain ⟨hna, hal⟩ := fresh_na (heap_ord co.heap0) (heap_ord co.heap) co.mono hfr
    exact ⟨hni, hal, fun h0 => hna (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 h0)⟩
  intro v
  by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨H, rfl⟩ := hw
  set kvN : List (MlS × BitVec 64) := (nm "nib", H) :: kvK with hkvN
  let BF : Gam → Ptrs → Prop := fun Γ q => (∀ c : BitVec 64, Overlap H.toNat 8 c →
    ¬ InObj Γ c.toNat ∧ q.Allocated c.toNat ∧ ¬ p0.Allocated c.toNat) ∧ H.toNat % 8 = 0 ∧
    heapBase ≤ H.toNat ∧ H.toNat + 8 ≤ q.hp
  refine hoareG_pre (P := GI a (LKV kvN) (fun Γ q _ => EQ Γ ∧ BF Γ q)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 H rfl⟩)
  have hnibN : (nm "nib", H) ∈ kvN := by simp [kvN]
  have hidxN : (nm "idx", X) ∈ kvN := by simp [kvN, kvK, kvH, kv0, kvCV, kvCB]
  have hkmN : (nm "ck", K0) ∈ kvN := by simp [kvN, kvK]
  have hchN : (nm "child", CH) ∈ kvN := by simp [kvN, kvK, kvH]
  -- `st8 nib, idx`, adopting the one-nibble buffer
  refine gp_seq (L := LKV kvN) (E := fun Γ _ _ => EQ Γ ∧ NIn Γ H 1) ?_ ?_
  · refine gp_stbBlkAdopt ha haC rfl rfl (H := H) (ea := lv (nm "nib")) (e := lv (nm "idx")) ?_ ?_
      (fun Γ q M h => h.2) (fun Γ Γ'' q M M' h hx hN => ⟨hEQx _ _ hx h.1, hN⟩)
    · intro s hs hL
      exact ev_lw (hL _ hnibN)
    · intro s hs hL x hx
      rw [ev_lw (hL _ hidxN)] at hx
      have := Option.some.inj hx
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
      subst this
      exact hX
  -- `if ck == 3 { return node_new_ext(nib, 1, child) }`
  let EQ3 : Gam → Prop := fun Γ => EQ Γ ∧ K0 ≠ 3 ∧ NIn Γ H 1
  have hEQ3x : ∀ Γ Γ', Ext Γ Γ' → EQ3 Γ → EQ3 Γ' := fun Γ Γ' he h =>
    ⟨hEQx _ _ he h.1, h.2.1, nIn_ext he h.2.2⟩
  refine gp_seq (L := LKV kvN) (E := fun Γ _ _ => EQ3 Γ) ?_ ?_
  · refine ite_val hkmN (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
    · refine gp_tail ha node_new_extT_guestR (ctor_sp hX0 ctor_ext_sp) (by simp [Node.neSig])
        (fun _ => rfl) ?_ ?_
      · intro s Γ q _ hL hh hE vs1 hvs
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        rw [evs_nil] at hr3
        cases hr3
        have e1 : v1 = .val (.word H) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hnibN)))
        have e2 : v2 = .val (.word (BitVec.ofNat 64 1)) := Option.some.inj (h2.symm.trans (ev_cw s 1))
        have e3 : v3 = .val (.word CH) := Option.some.inj (h3.symm.trans (ev_lw (hL _ hchN)))
        subst e1 e2 e3
        exact ⟨argsOK_ext' hE.1.1.1.2, fun x => argCells_fitsany (by simp [Node.neSig]),
          fun _ => ⟨H, BitVec.ofNat 64 1, CH, rfl, hE.2⟩⟩
      · intro s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co
        refine ⟨scrOld_sp_co haC co hLc, fun v hv => ?_⟩
        obtain ⟨o, ho, rfl, hot⟩ := hQ v hv
        exact rv_rt (rt_of_obj (t := Types.tNEXT) (by simp [Node.nodeTys]) ⟨o, ho, rfl, hot⟩)
    · have hne : K0 ≠ 3 := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      exact gp_skip fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE.1, hne, hE.2⟩
  have hleafext : ∀ Γ, EQ3 Γ → ∃ o ∈ Γ, o.base = CH ∧ (o.ty = Types.tNLEAF ∨ o.ty = Types.tNEXT) := by
    intro Γ h
    rcases ndT_leafext h.1.1.2 h.1.2 h.2.1 with ⟨-, o, ho, hb, ht⟩ | ⟨-, o, ho, hb, ht⟩
    · exact ⟨o, ho, hb, Or.inl ht⟩
    · exact ⟨o, ho, hb, Or.inr ht⟩
  have hfcat : ∀ p ∈ kvN, p.1 ≠ nm "cat" := by
    intro p hp
    simp only [kvN, kvK, kvH, kv0, kvCV, kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  -- `var cat = nibbles_concat(nib, 1, child.nib, child.nib_len)`
  refine gp_decCallA ha sumSpecA_nibbles_concat_R (funSpec_nc_val hX0) (by simp [MptH.ncSig])
    (fun _ => rfl)
    (L1 := fun v m => LKV kvN m ∧ m.lookup (nm "cat") = some v ∧ ∃ CAT : BitVec 64, v = .val (.word CAT))
    (E1 := fun v Γ _ M => EQ3 Γ ∧ ∀ CAT : BitVec 64, v = .val (.word CAT) →
      NIn Γ CAT (BitVec.ofNat 64 1 + rd M (CH + BitVec.ofNat 64 40)))
    (L2 := fun _ => False) (E2 := fun _ _ _ => False)
    (fun s Γ q _ hL hh hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
      ⟨scrOld_nf0_co haC co rfl, fun v hv hsh => ?_⟩)
    (fun s st v hL hsh => ⟨lkv_set (s := { st with locals := s.locals }) hL hfcat v,
      by simp [setVarHOLFinite, FUPDATE], val_of_shapeEq_one' hsh⟩)
    ?_ (fun _ _ _ h => h.elim)
  · have hany := anyArgsG (a := a) (sg' := MptH.ncSig) (Γ := Γ) (q := q) (by simp [MptH.ncSig]) rfl hvs
    refine ⟨hany.1, hany.2, fun callee => ?_⟩
    obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
    rw [evs_nil] at hr4
    cases hr4
    have e2 : v2 = .val (.word (BitVec.ofNat 64 1)) := Option.some.inj (h2.symm.trans (ev_cw s 1))
    have e4 := Spec.Mpt.Dec.ev_ld (hL _ hchN) 40 v4 h4
    subst e2 e4
    intro AL BL hAL hBL
    simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq, HolWordLab.word.injEq] at hAL hBL
    subst hAL hBL
    have := nIn_len_le (slice_of_node hh.1 (hleafext Γ hE))
    have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
    have h2 : (rd s.memory (CH + 40#64)).toNat ≤ 2 ^ 32 := this
    omega
  · -- the call's result: adopt the buffer
    subst hv
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
    rw [evs_nil] at hr4
    cases hr4
    have e1 : v1 = .val (.word H) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hnibN)))
    have e2 : v2 = .val (.word (BitVec.ofNat 64 1)) := Option.some.inj (h2.symm.trans (ev_cw s 1))
    have e3 := Spec.Mpt.Dec.ev_ld (hL _ hchN) 32 v3 h3
    have e4 := Spec.Mpt.Dec.ev_ld (hL _ hchN) 40 v4 h4
    subst e1 e2 e3 e4
    have hsl' := slice_of_node co.heap0.1 (hleafext Γ hE)
    have hGs : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := co.heap0.1
    obtain ⟨p', out, hv', hp', hord', hmono, hbe, h8, hb, hhp, hfr, hbyte⟩ :=
      hLc _ rfl _ _ _ _ rfl (by
        dsimp only
        have h1 : (rd s.memory (CH + BitVec.ofNat 64 40)).toNat ≤ 2 ^ 32 := nIn_len_le hsl'
        have h2 : (BitVec.ofNat 64 1).toNat = 1 := rfl
        omega)
        (fun j hj => Hooks.nibble_of_G hGs hE.2.2 hj)
        (fun j hj => Hooks.nibble_of_G hGs hsl' hj)
        q hpe (heap_ord co.heap0)
        (fun h0 => nIn_hp rfl co.heap0 hE.2.2 h0) (fun h0 => nIn_hp rfl co.heap0 hsl' h0)
    have hq' : p' = q' := by
      have := co.heap.2.1
      rw [hp'] at this
      exact Option.some.inj this
    subst hq'
    have hBLb : (rd s.memory (CH + BitVec.ofNat 64 40)).toNat ≤ 2 ^ 32 := nIn_len_le hsl'
    have h1v : (BitVec.ofNat 64 1).toNat = 1 := rfl
    have hlen : (BitVec.ofNat 64 1 + rd s.memory (CH + BitVec.ofNat 64 40)).toNat =
        (BitVec.ofNat 64 1).toNat + (rd s.memory (CH + BitVec.ofNat 64 40)).toNat := by
      rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
    have hbyte' : ∀ j, j < (BitVec.ofNat 64 1 + rd s.memory (CH + BitVec.ofNat 64 40)).toNat →
        Hooks.byteAt st.memory st.be (out + BitVec.ofNat 64 j) < 16 := by
      intro j hj
      rw [hlen] at hj
      have h := hbyte j hj
      have hbe' : st.be = (callEntryStateHOLFinite s callee).be := hbe
      rw [hbe']
      exact h
    obtain ⟨Γ'', hx, hh2, hsc2, hN, hnew, hge⟩ := buf_adopt ha haC rfl rfl co rfl
      (len := BitVec.ofNat 64 1 + rd s.memory (CH + BitVec.ofNat 64 40))
      (M := (BitVec.ofNat 64 1).toNat + (rd s.memory (CH + BitVec.ofNat 64 40)).toNat)
      h8 hb hhp hfr (by rw [hlen]) hbyte'
    obtain ⟨o, ho, hob, hot⟩ := hleafext Γ hE
    have hnode : o.ty ∈ Node.nodeTys := by rcases hot with h | h <;> simp [Node.nodeTys, h]
    have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := by
      obtain ⟨p1, hp1, hord, hLy, -⟩ := co.heap0.1
      exact (hLy.1 o ho).2.2.2.1
    have hs5 : o.HasSlot 5 := by
      rcases hot with h | h
      · rw [h, Types.ty_NLEAF] at hsz; simp only [Types.nleafTy] at hsz; unfold Obj.HasSlot; omega
      · rw [h, Types.ty_NEXT] at hsz; simp only [Types.nextTy] at hsz; unfold Obj.HasSlot; omega
    have hpr5 : (a.Cb.ty o.ty).slot 5 = .prot := by
      show (Types.guestC.ty o.ty).slot 5 = .prot
      rcases hot with h | h <;> rw [h] <;> decide
    have hfrm := prot_frame co ho hs5 hpr5 hnode rfl rfl
    have hc5 : o.cell 5 = CH + BitVec.ofNat 64 40 := by rw [Obj.cell, hob]
    rw [hc5] at hfrm
    refine ⟨Γ'', hx, hh2, hsc2, hEQ3x _ _ (ext_trans co.ext hx) hE, fun CAT hCAT => ?_⟩
    rw [hv'] at hCAT
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hCAT
    subst hCAT
    rw [show rd st.memory (CH + BitVec.ofNat 64 40) = rd s.memory (CH + BitVec.ofNat 64 40) from
      rd_eq_of_mem hfrm]
    exact hN
  intro v
  by_cases hw : ∃ CAT : BitVec 64, v = .val (.word CAT)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨CAT, rfl⟩ := hw
  set kvC : List (MlS × BitVec 64) := (nm "cat", CAT) :: kvN with hkvC
  refine hoareG_pre (P := GI a (LKV kvC) (fun Γ _ M => EQ3 Γ ∧
      NIn Γ CAT (BitVec.ofNat 64 1 + rd M (CH + BitVec.ofNat 64 40)))) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, hE.1,
      hE.2 CAT rfl⟩)
  have hckC : (nm "ck", K0) ∈ kvC := List.mem_cons_of_mem _ hkmN
  have hchC : (nm "child", CH) ∈ kvC := List.mem_cons_of_mem _ hchN
  have hcatC : (nm "cat", CAT) ∈ kvC := by simp [kvC]
  let EQ31 : Gam → Prop := fun Γ => EQ3 Γ ∧ K0 ≠ 1
  -- the length argument `1 + child.nib_len`, and the slice around it
  have hlenarg : ∀ (s : State σ) (v2 : ValueHOL 64),
      ev s (.op .add [cw 1, ldK "child" 40]) = some v2 → s.locals.lookup (nm "child") =
        some (.val (.word CH)) → v2 = .val (.word (BitVec.ofNat 64 1 + rd s.memory (CH + BitVec.ofNat 64 40))) := by
    intro s v2 hv2 hlk
    obtain ⟨x, y, hx, hy, rfl⟩ := Spec.Mpt.Leaves.ev_add2_inv' hv2
    have ex : x = BitVec.ofNat 64 1 := by
      rw [ev_cw] at hx
      simpa using (Option.some.inj hx).symm
    have ey := Spec.Mpt.Dec.ev_ld hlk 40 _ hy
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at ey
    rw [ex, ey]
  refine gp_seq (L := LKV kvC) (E := fun Γ _ M => EQ31 Γ ∧
      NIn Γ CAT (BitVec.ofNat 64 1 + rd M (CH + BitVec.ofNat 64 40))) ?_ ?_
  · refine ite_val hckC (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
    · have hK1 : K0 = 1 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc
      refine gp_tail ha node_new_leafT_guestR (ctor_sp hX0 ctor_leaf_sp) (by simp [Node.nlSig])
        (fun _ => rfl) ?_ ?_
      · intro s Γ q _ hL hh hE vs1 hvs
        obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
        obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
        obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
        obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
        rw [evs_nil] at hr4
        cases hr4
        have e1 : v1 = .val (.word CAT) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hcatC)))
        have e2 := hlenarg s v2 h2 (hL _ hchC)
        have e3 := Spec.Mpt.Dec.ev_ld (hL _ hchC) 48 v3 h3
        have e4 := Spec.Mpt.Dec.ev_ld (hL _ hchC) 56 v4 h4
        subst e1 e2 e3 e4
        have hleaf : ∃ o ∈ Γ, o.base = CH ∧ o.ty = Types.tNLEAF := by
          rcases ndT_leafext hE.1.1.1.2 hE.1.1.2 hE.1.2.1 with ⟨-, h⟩ | ⟨h2', -⟩
          · exact h
          · exact absurd (hK1.symm.trans h2') (by decide)
        obtain ⟨o, ho, hob, hot⟩ := hleaf
        have hvo := Hooks.vIn_of_leaf hh.1 ho hot
        rw [hob] at hvo
        exact ⟨(anyArgsG (by simp [Node.nlSig]) rfl hvs).1,
          fun x hx => argCells_any (by simp [Node.nlSig]) hx,
          fun _ => ⟨CAT, _, _, _, rfl, hE.2, hvo⟩⟩
      · intro s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co
        refine ⟨scrOld_sp_co haC co hLc, fun v hv => ?_⟩
        obtain ⟨o, ho, rfl, hot⟩ := hQ v hv
        exact rv_rt (rt_of_obj (t := Types.tNLEAF) (by simp [Node.nodeTys]) ⟨o, ho, rfl, hot⟩)
    · have hne : K0 ≠ 1 := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      exact gp_skip fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, ⟨hE.1, hne⟩, hE.2⟩
  -- the extension child
  refine gp_tail ha node_new_extT_guestR (ctor_sp hX0 ctor_ext_sp) (by simp [Node.neSig])
    (fun _ => rfl) ?_ ?_
  · intro s Γ q _ hL hh hE vs1 hvs
    obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have e1 : v1 = .val (.word CAT) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hcatC)))
    have e2 := hlenarg s v2 h2 (hL _ hchC)
    have e3 := Spec.Mpt.Dec.ev_ld (hL _ hchC) 48 v3 h3
    subst e1 e2 e3
    have hext : ∃ o ∈ Γ, o.base = CH ∧ o.ty = Types.tNEXT := by
      rcases ndT_leafext hE.1.1.1.1.2 hE.1.1.1.2 hE.1.1.2.1 with ⟨h1', -⟩ | ⟨-, h⟩
      · exact absurd h1' hE.1.2
      · exact h
    exact ⟨argsOK_ext' (ext_facts hh.1 hext).2, fun x => argCells_fitsany (by simp [Node.neSig]),
      fun _ => ⟨CAT, _, _, rfl, hE.2⟩⟩
  · intro s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co
    refine ⟨scrOld_sp_co haC co hLc, fun v hv => ?_⟩
    obtain ⟨o, ho, rfl, hot⟩ := hQ v hv
    exact rv_rt (rt_of_obj (t := Types.tNEXT) (by simp [Node.nodeTys]) ⟨o, ho, rfl, hot⟩)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.colOne_G
