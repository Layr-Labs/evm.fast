import InitECandidate.Solver.MemSafe.Dn.LoopNV
import InitECandidate.Solver.MemSafe.Dn.LoopM2

set_option autoImplicit false

/-!
# The decoder loop, mode 0: the finished branch

* `gp_decJv`: `var x = e; k` with the bound value visible to both the locals and the memory
  facts of `k`'s precondition;
* `nodeU_below`, `gp_stNode`: a store into slot 1 to 3 of a `nodeU` word (hash and slice cells);
* `wdOccK_G`: the value item's cells, the occupancy check, the tail;
* `wdBrPop_G`: `rlp_item` on the value slot, then `wdOccK`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

theorem gi_weak {a : Act σ} {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop} {t : State σ}
    (hL : ∀ m, L m → L' m) (h : GI a L E t) : GI a L' E t := ⟨hL _ h.1, h.2⟩

/-- `var x = e; k`, the bound value shared by the locals and the memory facts. -/
theorem gp_decJv {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {Inv : State σ → Prop}
    (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 : ValueHOL 64 → LocalsH → Prop}
    {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L1 v (setVarHOLFinite x v s).locals)
    (hE : ∀ (s : State σ) Γ q, L s.locals → E Γ q s.memory → ∀ v, ev s e = some v →
      E1 v Γ q s.memory)
    (hk : ∀ v, HoareG σ X (GI a (L1 v) (E1 v)) body (GPJ a Inv Rv))
    (hres : ∀ (t : State σ) (o : Option (ValueHOL 64)), Inv t →
      Inv { t with locals := t.locals.resVarEq (x, o) }) :
    HoareG σ X (GI a L E) (.dec x sh e body) (GPJ a Inv Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ v hv _ => ?_
  refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc,
      hE s Γ q hL hEs v hv⟩
  · exact ⟨fun hr => hres t _ (hq.1 hr), fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩

theorem node_min32 {o : Obj} (ht : o.ty ∈ Node.nodeTys)
    (hsz : (Types.guestC.ty o.ty).minSz ≤ o.size) : 32 ≤ o.size := by
  simp only [Node.nodeTys, List.mem_cons, List.not_mem_nil, or_false] at ht
  rcases ht with h | h | h | h <;> rw [h] at hsz
  · rw [Types.ty_NHASHED] at hsz; simpa [Types.nhashedTy] using hsz
  · rw [Types.ty_NLEAF] at hsz; simp only [Types.nleafTy] at hsz; omega
  · rw [Types.ty_NEXT] at hsz; simp only [Types.nextTy] at hsz; omega
  · rw [Types.ty_NBRANCH] at hsz; simp only [Types.nbranchTy] at hsz; omega

/-- Slot `j ≤ 3` of a `nodeU` word lies below `scratch_ptr`. -/
theorem nodeU_below {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} {Γ : Gam}
    {q : Ptrs} {s : State σ} (hh : Heap (aB vs s0 Γ0 p0) Γ q s) {B : BitVec 64}
    (hB : Fits Γ Types.nodeU B) {j : Nat} (hj : j ≤ 3) :
    (B + BitVec.ofNat 64 (8 * j)).toNat < q.sp := by
  obtain ⟨o1, o2, o3, o4, o5, -⟩ := heap_ord hh
  simp only [heapBase, heapEnd] at o1 o2 o3
  rcases nodeU_cases hB with h | ⟨o, ho, hb, ht⟩
  · simp only [nullMax] at h
    rw [Spec.Mpt.Dec.toNat_add_lt (by omega)]
    omega
  · obtain ⟨h1, h2⟩ := node_below rfl hh ho ht
    obtain ⟨p1, -, -, hL, -⟩ := hh.1
    have h32 := node_min32 ht (hL.1 o ho).2.2.2.1
    subst hb
    rw [Spec.Mpt.Dec.toNat_add_lt (by omega)]
    omega

/-- **A store into slot `j` (1 to 3) of a `nodeU` word** `B`, for any memory fact closed under
stores below `scratch_ptr`. -/
theorem gp_stNode {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx)
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {B : BitVec 64} (j : Nat) (hj : 1 ≤ j ∧ j ≤ 3) {x : MlS} {e : ExpHOL 64}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word B)))
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hB : ∀ Γ q M, E Γ q M → Fits Γ Types.nodeU B)
    (hE : ∀ Γ q M (V : BitVec 64), E Γ q M → (B + BitVec.ofNat 64 (8 * j)).toNat < q.sp →
      (∀ c, Hooks.RCell Γ c → c ≠ B + BitVec.ofNat 64 (8 * j)) →
      InObj Γ (B + BitVec.ofNat 64 (8 * j)).toNat →
      E Γ q (Struct.upd M (B + BitVec.ofNat 64 (8 * j)) V)) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) L E) (.store (.op .add [lv x, cw (8 * j)]) e)
      (GP (aB vs s0 Γ0 p0) L E Rv) :=
  gp_stSCH ha rfl hx (by simp only [nullMax]; omega)
    (fun s Γ q hh hEs => nodeU_slot hh (hB _ _ _ hEs) hj) hv
    (fun s Γ q V _ hh hEs _ hn hin _ => hE Γ q s.memory V hEs (nodeU_below hh (hB _ _ _ hEs) hj.2) hn hin)

/-- Locals after `var occ = ld (top + 40)`. -/
def LOc (DB T R Mo G BR B0 B1 B2 B3 : BitVec 64) (m : LocalsH) : Prop :=
  LBr0 DB T R Mo G BR m ∧
    m.lookup (nm "bv") =
      some (.rStruct [.val (.word B0), .val (.word B1), .val (.word B2), .val (.word B3)]) ∧
    IsW m (nm "occ")

theorem lbr0_set {DB T R Mo G BR : BitVec 64} {s : State σ} (h : LBr0 DB T R Mo G BR s.locals)
    {x : MlS} (h1 : x ≠ nm "db") (h2 : x ≠ nm "top") (h3 : x ≠ nm "result") (h4 : x ≠ nm "mode")
    (h5 : x ≠ nm "go") (h6 : x ≠ nm "br") (v : ValueHOL 64) :
    LBr0 DB T R Mo G BR (setVarHOLFinite x v s).locals :=
  ⟨lk_set h.1 h1 h2 h3 h4 h5 v, lk_keep (Ne.symm h6) h.2⟩

/-- **The value item and the tail** (`wdOccK`). -/
theorem wdOccK_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hsp0 : p0.sp ≤ scratchEnd)
    {DB T R Mo G BR B0 B1 B2 B3 : BitVec 64} (hT : T ≠ 0) (hMo : Mo ≠ 1 ∧ Mo ≠ 2) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LOc DB T R Mo G BR B0 B1 B2 B3)
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
          (BrO p0 Γ BR ∧ (B0 = 0 → Hooks.VInR Types.tVAL Γ B1 B2))))
      Spec.Mpt.Dec.wdOccK (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  unfold Spec.Mpt.Dec.wdOccK
  have hbv : ∀ m, LOc DB T R Mo G BR B0 B1 B2 B3 m → m.lookup (nm "bv") =
      some (.rStruct [.val (.word B0), .val (.word B1), .val (.word B2), .val (.word B3)]) :=
    fun m h => h.2.1
  refine gp_seqJ (L := LBr0 DB T R Mo G BR)
    (E := fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
      (BrO p0 Γ BR ∧ (B0 = 0 → Hooks.VInR Types.tVAL Γ B1 B2))) ?_ ?_
  · refine hoareG_ite ?_ (gp_skip fun s h => gi_weak (fun m h => h.1) h.1)
    by_cases h0 : B0 = 0
    swap
    · exact hoareG_false fun s _ ⟨⟨hL, _⟩, hc⟩ =>
        h0 (by have := Spec.Mpt.Dec.eq_of_then (Spec.Mpt.Dec.ev_rfield_w (i := 0) (hbv _ hL) rfl) hc
               simpa using this)
    refine hoareG_pre (P := GI (aB vs s0 Γ0 p0) (LOc DB T R Mo G BR B0 B1 B2 B3)
      (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
        (BrO p0 Γ BR ∧ (B0 = 0 → Hooks.VInR Types.tVAL Γ B1 B2)))) ?_ (fun s _ h => h.1)
    refine gp_stNV ha hsp0 (V1 := B1) (V2 := B2) (fun m h => h.1.2)
      (fun s hL => Spec.Mpt.Dec.ev_rfield_w (i := 1) (hbv _ hL) rfl)
      (fun s hL => Spec.Mpt.Dec.ev_rfield_w (i := 2) (hbv _ hL) rfl)
      (fun Γ h => ⟨h.1, h.2 h0⟩) ?_
    refine hoareG_ite ?_ (gp_skip fun s h => gi_weak (fun m h => h.1) h.1)
    refine hoareG_pre (P := GI (aB vs s0 Γ0 p0) (LOc DB T R Mo G BR B0 B1 B2 B3)
      (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
        (BrO p0 Γ BR ∧ (B0 = 0 → Hooks.VInR Types.tVAL Γ B1 B2)))) ?_ (fun s _ h => h.1)
    exact gp_assign ha.hH (fun s _ hL v _ =>
      lbr0_set hL.1 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) v)
  · refine gp_seqJ (hoareG_ite (hoareG_pre (gp_fail ha 9) (fun s _ h => h.1))
      (gp_skip fun s h => h.1)) ?_
    exact hoareG_pre (wdBrFin_G ha hsp0 hT hMo) (fun s _ ⟨hl, Γ, q, he, hh, hsc, hE⟩ =>
      ⟨hl, Γ, q, he, hh, hsc, hE.1, hE.2.1, hE.2.2.1⟩)

/-- A `tVAL` slice ends below `2^64`. -/
theorem vInR_lt {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {P L : BitVec 64} (h : Hooks.VInR Types.tVAL Γ P L) :
    P.toNat + L.toNat < 2 ^ 64 := by
  rcases h with h | ⟨x, hx, ht, h1, h2⟩
  · subst h
    have : (0 : BitVec 64).toNat = 0 := rfl
    have := P.isLt
    omega
  · obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    rw [haC] at hL
    obtain ⟨-, -, -, -, hlive⟩ := hL.1 x hx
    rw [ht, Types.ty_VAL] at hlive
    have hreg : (Types.valTy).region = .heap := by decide
    rw [hreg] at hlive
    simp only [Region.Live] at hlive
    obtain ⟨o1, o2, o3, o4, o5, -⟩ := hord
    unfold Obj.lo Obj.hi at *
    have : heapEnd < 2 ^ 64 := Hooks.heapEnd_lt
    omega

theorem ev_ldArr2a {s : State σ} {Ar : BitVec 64}
    (harr : s.locals.lookup (nm "arr2") = some (.val (.word Ar))) :
    ∀ v, ev s (.load .one (.op .add [lv (nm "arr2"), .panop .mul [cw 16, cw 16]])) = some v →
      v = .val (.word (rd s.memory (Ar + BitVec.ofNat 64 256))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lw harr) (ev_mul2 (ev_cw _ 16) (ev_cw _ 16))] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  have : Ar + BitVec.ofNat 64 16 * BitVec.ofNat 64 16 = Ar + BitVec.ofNat 64 256 := by
    congr 1
  rw [this, Struct.mem_word s.memory _]

theorem ev_ldArr2b {s : State σ} {Ar : BitVec 64}
    (harr : s.locals.lookup (nm "arr2") = some (.val (.word Ar))) :
    ∀ v, ev s (.load .one (.op .add [lv (nm "arr2"), .panop .mul [cw 16, cw 16], cw 8])) = some v →
      v = .val (.word (rd s.memory (Ar + BitVec.ofNat 64 264))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add3 (ev_lw harr) (ev_mul2 (ev_cw _ 16) (ev_cw _ 16)) (ev_cw _ 8)] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  have : Ar + (BitVec.ofNat 64 16 * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = Ar + BitVec.ofNat 64 264 := by
    congr 1
  rw [this, Struct.mem_word s.memory _]

/-- **Finish a branch record** (`wdBrPop`): the value item is a slice inside the head record's slice
array (`arr[16]`), hence inside a `tVAL` object. -/
theorem wdBrPop_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (aB vs s0 Γ0 p0) guestCtx) (hL0 : Layout Types.guestC p0 Γ0)
    (hsp0 : p0.sp ≤ scratchEnd) {DB T R Mo G BR : BitVec 64} (hT : T ≠ 0) (hMo : Mo ≠ 1 ∧ Mo ≠ 2) :
    HoareG σ guestCtx (GI (aB vs s0 Γ0 p0) (LBr0 DB T R Mo G BR)
        (fun Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
          BrO p0 Γ BR ∧ rd M (T + 8) ≠ 1))
      Spec.Mpt.Dec.wdBrPop (GPJ (aB vs s0 Γ0 p0) (JG (aB vs s0 Γ0 p0)) (RvB (aB vs s0 Γ0 p0))) := by
  unfold Spec.Mpt.Dec.wdBrPop
  refine gp_decJv ha.hH (L1 := fun v m => (∃ Ar : BitVec 64, v = .val (.word Ar)) ∧
      LBr0 DB T R Mo G BR m ∧ m.lookup (nm "arr2") = some v)
    (E1 := fun v Γ q M => FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
      BrO p0 Γ BR ∧ rd M (T + 8) ≠ 1 ∧ v = .val (.word (rd M (T + BitVec.ofNat 64 24))))
    (fun s _ hL v hv => ⟨⟨_, Spec.Mpt.Dec.ev_ld hL.1.2.1 24 v hv⟩,
      lbr0_set hL (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) v,
      by simp [setVarHOLFinite, FUPDATE]⟩)
    (fun s Γ q hL hE v hv => ⟨hE.1, hE.2.1, hE.2.2.1, hE.2.2.2, ev_ldTopk hL.1.2.1 24 v hv⟩) ?_
    (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) t o h)
  intro v
  by_cases hw : ∃ Ar : BitVec 64, v = .val (.word Ar)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨Ar, rfl⟩ := hw
  refine gp_decCallJ ha (sumA_of_csumm rlpItem_R) (Spec.Mpt.Leaves.freshFoot_rlp_item' (Rec.foldOK_guestR (σ := σ)).hX)
    (by simp) (fun _ => rfl)
    (L1 := fun v m => (∃ b0 b1 b2 b3 : BitVec 64,
      v = .rStruct [.val (.word b0), .val (.word b1), .val (.word b2), .val (.word b3)]) ∧
      m.lookup (nm "bv") = some v ∧ m.lookup (nm "arr2") = some (.val (.word Ar)) ∧ LBr0 DB T R Mo G BR m)
    (E1 := fun v Γ q M => (FrG (aB vs s0 Γ0 p0) Γ q M q.sp p0.sp T ∧ Hooks.NdbR Γ M DB ∧
      BrO p0 Γ BR) ∧ ∀ b0 b1 b2 b3 : BitVec 64,
      v = .rStruct [.val (.word b0), .val (.word b1), .val (.word b2), .val (.word b3)] →
        Hooks.VInR Types.tVAL Γ b1 b2)
    (fun s Γ q hL hh hE hX vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv _ => ⟨⟨frG_call rfl rfl hL0 hsp0 co hsc hE.1, ndbR_co rfl rfl co hE.2.1,
        brO_ext co.ext hE.2.2.1⟩, fun b0 b1 b2 b3 hvv => ?_⟩⟩)
    (fun s st v hL hsh => ⟨w4_of_sh hsh, by simp [setVarHOLFinite, FUPDATE],
      lk_keep (by decide) hL.2.2,
      lbr0_set hL.2.1 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) v⟩)
    ?_ (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) t o h)
  · exact ⟨(anyArgsG (by simp) rfl hvs).1, fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩
  · subst hv
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨p', -, -, -, -, hRq⟩ := hLc _ rfl q hpe (heap_ord co.heap0) trivial
    obtain ⟨P1, L1, hvs', hRi⟩ := hRq
    obtain ⟨v0, vs2, rfl, h0, hvs2⟩ := evs_cons_inv hvs
    obtain ⟨v1, vs3, rfl, h1, hvs3⟩ := evs_cons_inv hvs2
    rw [evs_nil] at hvs3
    cases hvs3
    obtain ⟨hFG, hND, hBR, hk, hAr⟩ := hE
    have hAr' : Ar = rd s.memory (T + BitVec.ofNat 64 24) := by
      simpa only [ValueHOL.val.injEq, HolWordLab.word.injEq] using hAr
    have e0 := ev_ldArr2a hL.2.2 v0 h0
    have e1 := ev_ldArr2b hL.2.2 v1 h1
    subst e0 e1
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
    obtain ⟨hP1, hL1⟩ := hvs'
    subst hP1 hL1
    obtain ⟨-, -, -, -, -, hRS, -⟩ := frG_unfold hFG hT
    have hbd : 16 < (if rd s.memory (T + 8) = 1 then 2 else 17) := by rw [if_neg hk]; decide
    have hVin := arrS_vin hRS.2.1 hRS.1 (j := 16) hbd
    have hVin' : Hooks.VInR Types.tVAL Γ (rd s.memory (Ar + BitVec.ofNat 64 256))
        (rd s.memory (Ar + BitVec.ofNat 64 264)) := by rw [hAr']; simpa using hVin
    have hlt := vInR_lt (a := _) rfl co.heap0 hVin'
    obtain ⟨hcL, hb⟩ := hRi _ _ _ _ hvv
    have hb' := hb hlt
    exact Hooks.vInR_ext co.ext (vInR_sub hVin' hb'.1 hb'.2)
  · intro v
    by_cases hw : ∃ b0 b1 b2 b3 : BitVec 64,
        v = .rStruct [.val (.word b0), .val (.word b1), .val (.word b2), .val (.word b3)]
    swap
    · exact hoareG_false fun s _ h => hw h.1.1
    obtain ⟨b0, b1, b2, b3, rfl⟩ := hw
    refine gp_decJ ha.hH (L1 := LOc DB T R Mo G BR b0 b1 b2 b3) (fun s _ hL v hv => ?_)
      (hoareG_pre (wdOccK_G ha hsp0 (DB := DB) (R := R) (G := G) (BR := BR) (B0 := b0) (B1 := b1) (B2 := b2) (B3 := b3) hT hMo) (fun s _ h => ?_))
      (fun t o h => jg_res ha.hH (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) t o h)
    · obtain ⟨V, rfl⟩ := ld_word hL.2.2.2.1.2.1 40 v hv
      exact ⟨lbr0_set hL.2.2.2 (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) _,
        lk_keep (by decide) hL.2.1, V, by simp [setVarHOLFinite, FUPDATE]⟩
    · obtain ⟨hl, Γ, q, he, hh, hsc, hE⟩ := h
      exact ⟨hl, Γ, q, he, hh, hsc, hE.1.1, hE.1.2.1, hE.1.2.2, fun _ => hE.2 b0 b1 b2 b3 rfl⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.gp_stNode
#print axioms InitECandidate.Solver.MemSafe.Dn.wdOccK_G
#print axioms InitECandidate.Solver.MemSafe.Dn.wdBrPop_G
