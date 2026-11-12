import InitECandidate.Solver.MemSafe.Fq.Entry

set_option autoImplicit false

/-!
# `fq12_inv`: the summary

`fq12_inv(d, a)`: `invSig = ⟨[buf 384, any], [], [], false⟩`, no capabilities, `Pre = True`
(a `CSumm`): `d` is a writable 384-byte buffer (every caller passes `alloc(384)`); `a` is read only.

Method (the block kit of `Mod/Kit.lean`): the activation invariant with a heap window; the six
`alloc(416)` blocks are tracked in `BO` (`bs6`); every pointer local holds a block base, so the
rotation `r0 <-> r1`, `s0 -> s1 -> tmp` only permutes the set; the degrees from `fq_poly_deg` are
`-1` or `< 13` (`Spec.Fq12.funSpec_deg`), whence `1 <= d1 <= 12` after the signed guard and
`(d0 - d1) + d1 = d0 <= 12` (`fq_poly_submul`'s `SubPre`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Fq
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

/-- The first statement `var mark = heap_mark();`, from the entry state. -/
theorem stMarkF {a : Act σ} (ce : CI σ X a) (D A : BitVec 64) (hout : OutD a D)
    (hh : Heap a a.Γ0 a.p0 a.s0) (hloc : LVs [("d", D), ("a", A)] a.s0.locals) :
    HoareG σ X (fun t => t = a.s0) Spec.Fq12.fq12InvBody (HQa a) := by
  unfold Spec.Fq12.fq12InvBody
  change HoareG σ X _ (.decCall (nm "mark") .one (nm "heap_mark") [] a1) _
  refine hoareG_decCall (FunSpec.and ce.hMk (funSpec_be' (nm "heap_mark"))) ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    subst hP
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    obtain ⟨w, hgw, hwp⟩ := gword_get hh.2.1 Region.heap
    have hv' := mark_val_word (hv v rfl) hgw
    subst hv'
    have hd : st.memaddrs = a.s0.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := heap_congr (s := a.s0) ce.ha.hH hm hg hd hbe hh
    have hwp' : w.toNat = a.p0.hp := hwp
    refine hoareG_conseq (stA1 ce ⟨D, A, w, 0, 0, 0, 0, 0, 0⟩ hout
      ⟨le_of_eq hwp'.symm, fun b hb => by simp at hb⟩)
      (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals ce.ha.hH _ hq)
    subst ht
    refine ⟨?_, a.Γ0, a.p0, ext_refl _, heap_congr (s := st) ce.ha.hH rfl rfl rfl rfl hh1,
      le_of_eq hwp', ?_⟩
    · exact LVs.dec (l := [("d", D), ("a", A)]) hloc "mark" w
        (side_of (l := [("d", D), ("a", A)]) (l0 := [("d", 0), ("a", 0)]) (x := "mark") rfl (by decide))
    · exact (win_new hh hwp).2.2
  · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hctx habn r' hr' hna
    subst hP
    cases hr'
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hm, hg, -⟩ := hR hg0 hvs0
    have hd : st.memaddrs = a.s0.memaddrs := hctx.2.1.trans hs.2.1.symm
    exact ⟨a.Γ0, a.p0, ext_refl _, heap_congr (s := a.s0) (t := emptyLocalsHOLFinite st) ce.ha.hH hm hg hd hbe hh⟩

/-- **`fq12_inv`**: generic in the hook family; the callee summaries are hypotheses
(fold entries, and `fq_poly_submul` with its hand precondition). -/
theorem csumm_fq12_inv {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hMZ : CSumm σ X Types.guestC H (nm "memzero") Helpers.sigMemzero [])
    (hMC : CSumm σ X Types.guestC H (nm "memcpy") Helpers.sigMemcpy [])
    (hMul : CSumm σ X Types.guestC H (nm "fq_mul") sgAA [])
    (hInv : CSumm σ X Types.guestC H (nm "fq_inv") sgA1 [])
    (hIsz : CSumm σ X Types.guestC H (nm "u256_is_zero") sgA1 [])
    (hDeg : CSumm σ X Types.guestC H (nm "fq_poly_deg") sgAA [])
    (hSub : SumSpecA σ X Types.guestC H (nm "fq_poly_submul") Bn2.bnSubSig Bn2.SubPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)) :
    CSumm σ X Types.guestC H (nm "fq12_inv") invSig [] := by
  refine csumm_of_heap_caps hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_nil _ _) ?_
  intro vs body callee rs hl s0 hs hloc Γ0 p0 ha hh
  rw [hF.hX] at hl
  obtain ⟨rfl, -, A', B', rfl, hA, hB, hla, hlb⟩ :=
    lookupCode_two Spec.Fq12.code_fq12_inv (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hB
  set a : Act σ := actOf Types.guestC H invSig [] [V D, V A] s0 Γ0 p0 with ha_def
  have hloc2 : a.s0.locals = callee := hloc
  have hloc' : LVs [("d", D), ("a", A)] a.s0.locals := by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl
    · rw [hloc2]; exact hla
    · rw [hloc2]; exact hlb
  have hL0 : Layout a.C a.p0 a.Γ0 := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := id hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact hL
  obtain ⟨v0, hv0, w0, hw0, hbuf0⟩ := Bn2.argAt ha.hargs0 (i := 0) (pt := .buf 384) rfl
  have hv0' : v0 = V D := by
    have : [V D, V A][0]? = some v0 := hv0
    simpa using this.symm
  subst hv0'
  have hw0' : w0 = D := by
    have : wordOf (V D) = some w0 := hw0
    simpa [wordOf, V] using this.symm
  subst hw0'
  have hb64 : w0.toNat + 416 < 2 ^ 64 := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    have := Helpers.bufOK_bound hord hL w0.isLt hbuf0
    have hse : scratchEnd < 2 ^ 63 := by decide
    omega
  have hout : OutD a w0 :=
    ⟨hbuf0, fun x hx => Or.inr (Or.inl (WaveHelpers.argCells_buf_at (i := 0) (n := 384) rfl rfl hx)),
      hb64⟩
  have ce : CI σ X a :=
    { ha := ha
      hgrow := rfl
      hL0 := hL0
      mz := toSA' hMZ
      mc := toSA' hMC
      mul := toSA' hMul
      inv := toSA' hInv
      isz := toSA' hIsz
      deg := toSA' hDeg
      degF := Spec.Fq12.funSpec_deg hF.hX
      sub := hSub
      hAl := allocSpec_alloc hF.hX
      hAc := summ_alloc_heap hF.hX hF.hH hF.hAC
      hRel := releaseSpec_heap_release hF.hX
      hMk := markSpec'_heap_mark hF.hX }
  have H := stMarkF ce w0 A hout hh hloc'
  refine hoareG_conseq H (fun t _ ht => ht) (fun r t _ _ hq r' hr hna => ?_)
  obtain ⟨Γ', p', he, hh'⟩ := hq r' hr hna
  exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [invSig] at hrt⟩

end InitECandidate.Solver.MemSafe.Fq

#print axioms InitECandidate.Solver.MemSafe.Fq.csumm_fq12_inv
