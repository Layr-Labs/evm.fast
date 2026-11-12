import InitECandidate.Solver.MemSafe.Aw.Merkp

set_option autoImplicit false

/-!
# Writes into the scalar cells of a typed global's object (`ssz_len_chunk`)

`awInv_writeS`: a write whose cells are at or above `h0` or scalar cells of the current `Γ'`
keeps `AwInv` (`G_buf`; scalar cells of `Γ'` are `WCell`s of `Γ0` by `Sub`).
`chunk_scell`: the first 32 bytes of a `ptr t` object whose type is all `scalar` with `minSz ≥ 32`
are scalar cells.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

theorem awInv_writeS {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s)
    (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    {R : BitVec 64 → Prop} (hmod : ModifiesOnly R s.memory t.memory)
    (hR : ∀ (Γ' : Gam), G a.C a.H Γ' s → ∀ x, R x → a.h0 ≤ x.toNat ∨ SCell a.C Γ' x) :
    AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  refine ⟨Γ', p', G_buf hK.hH hK.hT hG hg hd hbe hmod (fun x hx => ?_),
    by rw [AllocImpl.ptrsOf_congr hg]; exact hp, h1, h2, h3, h4, ?_, fun g hg1 hg2 => by
      rw [hg]; exact h6 g hg1 hg2⟩
  · rcases hR Γ' hG x hx with h | h
    · exact Or.inr (not_inObj h3 h)
    · exact Or.inl h
  · intro x hx
    have hnr : ¬ R x := by
      intro hr
      apply hx
      rcases hR Γ' hG x hr with h | ⟨o, ho, k, hk, hs, e⟩
      · exact Or.inl h
      · exact Or.inr (Or.inl (wcell_of_sub h2 (obj_hi_le hG)
          ⟨o, ho, k, hk, by rw [hs]; decide, e⟩))
    rw [hmod x hnr]
    exact h5 x hx

theorem chunk_scell {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} {t : Nat}
    (hG : G C H Γ s) (hslot : ∀ k, (C.ty t).slot k = .scalar) (hmin : 32 ≤ (C.ty t).minSz)
    {o : Obj} (ho : o ∈ Γ) (hty : o.ty = t) {x : BitVec 64}
    (hx : Overlap o.base.toNat 32 x) : SCell C Γ x := by
  obtain ⟨p, hp, hord, hL, -⟩ := hG
  obtain ⟨hal, hsz8, hpos, hms, -⟩ := hL.1 o ho
  obtain ⟨hx1, hx2, hx3⟩ := hx
  have hlo : o.lo = o.base.toNat := rfl
  rw [hty] at hms
  obtain ⟨j, hj⟩ : ∃ j, x.toNat = o.lo + 8 * j := ⟨(x.toNat - o.lo) / 8, by omega⟩
  have hj4 : j < 4 := by omega
  have hk : o.HasSlot j := by unfold Obj.HasSlot; omega
  refine ⟨o, ho, j, hk, by rw [hty]; exact hslot j, ?_⟩
  apply BitVec.eq_of_toNat_eq
  rw [(cell_toNat hord hL ho hk).1, hj]

/-- Everything about the object a typed global points to. -/
theorem chunk_info {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} {g : MlS} {t : Nat}
    (hG : G C H Γ s) (hGT : C.GT.lookup g = some (.ptr t))
    (hslot : ∀ k, (C.ty t).slot k = .scalar) (hmin : 32 ≤ (C.ty t).minSz) :
    ∃ v : BitVec 64, gword s g = some v ∧ v.toNat + 32 ≤ scratchEnd ∧
      ∀ x, Overlap v.toNat 32 x → SCell C Γ x := by
  have hG0 := hG
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG0
  obtain ⟨v, hv, o, ho, hb, hty⟩ := hGl g _ hGT
  refine ⟨v, hv, ?_, fun x hx => chunk_scell hG hslot hmin ho hty (by rw [hb]; exact hx)⟩
  obtain ⟨-, -, -, hms, hlive⟩ := hL.1 o ho
  rw [hty] at hms
  have hlo : o.lo = v.toNat := by rw [← hb]; rfl
  have hl := hlive
  unfold Ptrs.Ordered at hord
  cases hrg : (C.ty o.ty).region <;> simp only [hrg] at hl <;> unfold Region.Live at hl <;>
    simp only [scratchEnd, heapEnd] at hord hl ⊢ <;> omega

/-- A footprint callee writing the first 32 bytes of the global's object. -/
theorem asp_foot_chunk {a : AwE σ} (hK : AwOK a) {f : MlS} {PreF : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} (hf : FootSpec σ X f PreF R) {g : MlS} {t : Nat}
    (hGT : a.C.GT.lookup g = some (.ptr t)) (hslot : ∀ k, (a.C.ty t).slot k = .scalar)
    (hmin : 32 ≤ (a.C.ty t).minSz) :
    ASp a X f (fun vs s => PreF vs ∧ ∃ v : BitVec 64, gword s g = some v ∧
      ∀ x, R vs x → Overlap v.toNat 32 x) (fun _ _ _ => True) := by
  have hd := Helpers.funSpec_dom (σ := σ) (X := X) f
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  have h1 := hf vs body callee rs hl s hs hloc r hr
  have h2 := hd vs body callee rs hl s hs hloc r hr
  subst hv
  obtain ⟨hg, hmod⟩ := h1 (by simp [Good]) hP.1
  obtain ⟨v0, hv0, hov⟩ := hP.2
  refine ⟨awInv_writeS hK hinv hg h2.1 h2.2 hmod (fun Γ' hG x hx => Or.inr ?_), trivial⟩
  obtain ⟨v1, hv1, -, hsc⟩ := chunk_info hG hGT hslot hmin
  rw [hv0] at hv1
  cases hv1
  exact hsc x (hov x hx)

def zcN : MlS := nm "ssz_len_chunk"
def rootN : MlS := nm "root"
def lenN : MlS := nm "len"

def mixBody : ProgHOL 64 :=
  .seq (callD (nm "memzero") [gv zcN, cw 32])
    (.seq (callD (nm "st_le64") [gv zcN, lv lenN])
      (.seq (callD (nm "sha256_pair") [lv rootN, gv zcN, lv outN]) (.return (cw 0))))

theorem code_mix_in_length : guestCode (nm "mix_in_length") =
    some ([(rootN, .one), (lenN, .one), (outN, .one)], mixBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_mix_in_length =
      (nm "mix_in_length", [(rootN, .one), (lenN, .one), (outN, .one)], mixBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 187) (by decide)) ⟨_, rfl⟩ h

def MixPre (h0 : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ O : BitVec 64, argW vs 2 = some O ∧ h0 ≤ O.toNat ∧ O.toNat ≤ 2 ^ 60

def MixPost (vs : List (ValueHOL 64)) (_ : ValueHOL 64) : Prop :=
  ∀ O : BitVec 64, argW vs 2 = some O → InD O

theorem awSpec_mix_in_length {C : Cfg} {H : Hooks σ} {t : Nat} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) (hGT : C.GT.lookup zcN = some (.ptr t))
    (hslot : ∀ k, (C.ty t).slot k = .scalar) (hmin : 32 ≤ (C.ty t).minSz) :
    AWSpec σ X C H (nm "mix_in_length") [] (fun vs _ h0 => MixPre h0 vs)
      (fun vs _ v _ => MixPost vs v) := by
  refine awSpec_of_hoareG (PV := MixPost) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, Ot, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_mix_in_length (by decide) (by decide) (by decide) hl
  obtain ⟨R0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  refine hoareG_conseq (P := APre a (fun m => m.lookup outN = some (.val (.word O))))
    (Q := AQ a (fun _ => True) (MixPost [.val (.word R0), .val (.word N0), .val (.word O)])) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact hlc⟩)
    (fun _ _ _ _ h => h)
  unfold mixBody
  have hinfo : ∀ (s : State σ), AwInv a s →
      ∃ V : BitVec 64, s.globals.lookup zcN = some (.val (.word V)) ∧ V.toNat + 32 ≤ scratchEnd := by
    intro s hI
    obtain ⟨Γ', p', hG', -⟩ := hI
    obtain ⟨V, hV, hb, -⟩ := chunk_info hG' hGT hslot hmin
    refine ⟨V, ?_, hb⟩
    unfold gword at hV
    split at hV
    · rename_i w h; cases hV; exact h
    · cases hV
  have hsc : ∀ (s : State σ) (V : BitVec 64), AwInv a s →
      s.globals.lookup zcN = some (.val (.word V)) → gword s zcN = some V := by
    intro s V hI hV
    simp [gword, hV]
  -- memzero
  refine hoareG_seqA (L2 := fun m => m.lookup outN = some (.val (.word O)))
    (hoareG_callAs hK (asp_foot_chunk hK (foot_memzero hC hA) hGT hslot hmin) ?_
      (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s1 hs1 hP1 vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨V, hV, hb⟩ := hinfo s1 hP1.1
    have e1' : s1.globals.lookup zcN = some v1 := e1
    rw [hV] at e1'
    cases e1'
    rw [ev_cw] at e2
    cases e2
    refine ⟨⟨V, BitVec.ofNat 64 32, rfl, rfl, Or.inr (by simpa using hb)⟩, V, (show gword s1 zcN = some V from hsc s1 V hP1.1 hV), ?_⟩
    intro x ⟨D, N, hD, hN, hov⟩
    cases hD
    cases hN
    simpa using hov
  -- st_le64
  refine hoareG_seqA (L2 := fun m => m.lookup outN = some (.val (.word O)))
    (hoareG_callAs hK (asp_foot_chunk hK (foot_st_le64 hC hA) hGT hslot hmin) ?_
      (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s1 hs1 hP1 vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨V, hV, hb⟩ := hinfo s1 hP1.1
    have e1' : s1.globals.lookup zcN = some v1 := e1
    rw [hV] at e1'
    cases e1'
    refine ⟨⟨V, rfl, by omega⟩, V, (show gword s1 zcN = some V from hsc s1 V hP1.1 hV), ?_⟩
    intro x ⟨D, hD, hov⟩
    cases hD
    exact overlap_mono hov (by omega) (by omega)
  -- sha256_pair
  refine hoareG_seqA (L2 := fun m => m.lookup outN = some (.val (.word O)) ∧ InD O)
    (hoareG_callAs hK (asp_sha hK hC hA hT) ?_ ?_) ?_
  · intro s1 hs1 hP1 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP1.2] at e3
    cases e3
    exact ⟨O, rfl, ho1, ho2⟩
  · intro s1 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hL] at e3
    cases e3
    exact ⟨hL, hRet O rfl⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL.2)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_mix_in_length
