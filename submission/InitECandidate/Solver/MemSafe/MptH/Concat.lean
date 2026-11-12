import InitECandidate.Solver.MemSafe.MptH.Common

set_option autoImplicit false

/-!
# `nibbles_concat`: the summary

```
fun 1 nibbles_concat(1 a, 1 al, 1 b, 1 bl) {
  var 1 out = alloc(al + bl);
  memcpy(out, a, al);
  memcpy(out + al, b, bl);
  return out; }
```

`ncSig = ⟨[any, any, any, any], [], [], false⟩`. **Precondition** `NcPre`: `al + bl < 2^64` (no
wraparound of the allocation size; otherwise the two `memcpy` writes would not lie in the
allocated block). The block `[out, out + al + bl)` is a caller temporary (fresh, outside `Γ`), so
the two `memcpy` calls (`sigMemcpy = [bufArg 2 1 0, any, any]`) are in the footprint. The result
type is `[]` (the block's size `al + bl` is not of the form `c * arg + d`).
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.MptH
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def ncBody : ProgHOL 64 :=
  .decCall (nm "out") .one (nm "alloc") [.op .add [lv (nm "al"), lv (nm "bl")]]
    (.seq (callD (nm "memcpy") [lv (nm "out"), lv (nm "a"), lv (nm "al")])
      (.seq (callD (nm "memcpy") [.op .add [lv (nm "out"), lv (nm "al")], lv (nm "b"), lv (nm "bl")])
        (.return (lv (nm "out")))))

def ncPs : List (MlS × ShapeHOL) :=
  [(nm "a", .one), (nm "al", .one), (nm "b", .one), (nm "bl", .one)]

theorem entry_nibbles_concat : fnEntry Guest.Software.guestFn_nibbles_concat =
    (nm "nibbles_concat", ncPs, ncBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_nibbles_concat : guestCode (nm "nibbles_concat") = some (ncPs, ncBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 252) (by decide)) ⟨_, rfl⟩
    entry_nibbles_concat

/-- No parameter constraints; the result is a caller temporary; no new objects. -/
def ncSig : Sig := ⟨[.any, .any, .any, .any], [], [], false⟩

/-- **Caller obligation**: `al + bl` does not wrap. -/
def NcPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ AL BL : BitVec 64, argW vs 1 = some AL → argW vs 3 = some BL →
    AL.toNat + BL.toNat < 2 ^ 64

def NcL (A AL B BL : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "a") = some (.val (.word A)) ∧ m.lookup (nm "al") = some (.val (.word AL)) ∧
    m.lookup (nm "b") = some (.val (.word B)) ∧ m.lookup (nm "bl") = some (.val (.word BL))

def NcL1 (A AL B BL Ar : BitVec 64) (m : LocalsH) : Prop :=
  NcL A AL B BL m ∧ m.lookup (nm "out") = some (.val (.word Ar))

theorem overlap_mono {b m b' n : Nat} {x : BitVec 64} (h : Overlap b m x) (h1 : b' ≤ b)
    (h2 : b + m ≤ b' + n) : Overlap b' n x := by
  obtain ⟨h8, h3, h4⟩ := h
  exact ⟨h8, by omega, by omega⟩

theorem argCells_memcpy' {q x y : BitVec 64} {a : BitVec 64}
    (h : ArgCells Helpers.sigMemcpy.params [.val (.word q), .val (.word x), .val (.word y)] a) :
    Overlap q.toNat (1 * y.toNat + 0) a :=
  Struct.argCells_memcpy (gr := false) h

theorem argsOK_memcpy {C : Cfg} {Γ : Gam} {q : Ptrs} {D S N : BitVec 64}
    (h : BufOK C Γ q D.toNat (1 * N.toNat + 0)) :
    ArgsOK C Γ q Helpers.sigMemcpy.params [.val (.word D), .val (.word S), .val (.word N)] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨D, N, rfl, rfl, h⟩
  · trivial
  · trivial

theorem sumSpec_nibbles_concat {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "nibbles_concat") ncSig NcPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hmc : CSumm σ X Types.guestC H (nm "memcpy") Helpers.sigMemcpy [] :=
    csumm_of_summ (Helpers.summ_memcpy hF.hH Helpers.tagSlots_guestC hX hF.hal)
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, ALv, Bv, BLv, rfl, hsA, hsAL, hsB, hsBL, hla, hlal, hlb, hlbl⟩ :=
    Bn.lookupCode_four code_nibbles_concat (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨AL, rfl⟩ := val_of_shapeEq_one hsAL
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨BL, rfl⟩ := val_of_shapeEq_one hsBL
  have hsum : AL.toNat + BL.toNat < 2 ^ 64 := hpre AL BL rfl rfl
  have hsumE : (AL + BL).toNat = AL.toNat + BL.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt hsum]
  set a := actOf Types.guestC H ncSig [] [.val (.word A), .val (.word AL), .val (.word B),
    .val (.word BL)] s0 Γ0 p0 with hadef
  refine hoareG_conseq (P := PreH a (NcL A AL B BL)) (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlal, by rw [hloc]; exact hlb,
      by rw [hloc]; exact hlbl⟩, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [ncSig] at hrt⟩
  unfold ncBody
  refine hoareG_decCall (summ_funSpec halloc) ?_ ?_
  · intro s _ ⟨⟨hA1, hAL1, hB1, hBL1⟩, Γ, q, he, hh1⟩ vs hvs callee v st hR _ hsh
    rw [evs_cons (ev_add2 (ev_lw hAL1) (ev_lw hBL1)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, hm2, hnf2, hret⟩ := heap_call ha hh1 hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨x, hx, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Ar rfl (by rw [flattenHOL]; rfl)
    have hxe : x = AL + BL := by
      simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
      exact hx.symm
    subst hxe
    rw [hsumE] at hfb
    have hfb' : FreshBuf Γ2 q q2 Ar (AL.toNat + BL.toNat) := by simpa using hfb
    clear hfb
    have hord1 := heap_ord hh1
    have hord2 := heap_ord hh2
    have hm1 : a.p0.Mono q := hh1.2.2.1
    have hArn : Ar.toNat + (AL.toNat + BL.toNat) < 2 ^ 64 ∨ AL.toNat + BL.toNat = 0 := by
      rcases freshBuf_bound hord1 hord2 hfb' with h | h
      · exact Or.inr h
      · exact Or.inl h
    have hblkF : BlkF Ar (AL.toNat + BL.toNat) Γ2 q2 := fun y hy =>
      ⟨(hfb'.2 y hy).2, fresh_alloc hord1 (hfb'.2 y hy).1⟩
    have hblkN : ∀ y : BitVec 64, Overlap Ar.toNat (AL.toNat + BL.toNat) y →
        ¬ a.p0.Allocated y.toNat := fun y hy =>
      fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2) (fresh_mono hm1 (hfb'.2 y hy).1)
    refine hoareG_conseq (Q := HQa a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqa_locals ha.hH _ h)
    set st' := setVarHOLFinite (nm "out") (.val (.word Ar)) { st with locals := s.locals }
      with hst'
    have hL1 : NcL1 A AL B BL Ar st'.locals := by
      refine ⟨⟨?_, ?_, ?_, ?_⟩, lk_set_self _ _ _⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hA1
      · rw [lk_set_ne _ _ (by decide)]; exact hAL1
      · rw [lk_set_ne _ _ (by decide)]; exact hB1
      · rw [lk_set_ne _ _ (by decide)]; exact hBL1
    have hB1' : BlkH a Ar (AL.toNat + BL.toNat) st' :=
      ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hblkF, hblkN⟩
    refine hoareG_pre (P := fun t => NcL1 A AL B BL Ar t.locals ∧ BlkH a Ar (AL.toNat + BL.toNat) t)
      ?_ (fun t _ ht => ?_)
    swap
    · subst ht
      exact ⟨hL1, hB1'⟩
    refine hoareG_seqB (L := NcL1 A AL B BL Ar) (Ar := Ar) (n := AL.toNat + BL.toNat) hqa_of_abn ?_ ?_
    · -- `memcpy(out, a, al)`
      refine hoareG_callBlk ha hmc (by simp [Helpers.sigMemcpy]) (by simp [Helpers.sigMemcpy])
        (L := NcL1 A AL B BL Ar) ?_
      intro s' _ ⟨⟨hA2, hAL2, hB2, hBL2⟩, hout⟩ _
      refine ⟨[.val (.word Ar), .val (.word A), .val (.word AL)],
        evs_cons (ev_lw hout) (evs_cons (ev_lw hA2) (evs_cons (ev_lw hAL2) evs_nil)),
        fun Γ' q' hB => argsOK_memcpy (bufOK_blk hB le_rfl (by omega)), fun y hy => ?_⟩
      exact overlap_mono (argCells_memcpy' hy) le_rfl (by omega)
    · refine hoareG_seqB (L := NcL1 A AL B BL Ar) (Ar := Ar) (n := AL.toNat + BL.toNat) hqa_of_abn ?_ ?_
      · -- `memcpy(out + al, b, bl)`
        have hoff : (Ar + AL).toNat = Ar.toNat + AL.toNat := by
          rw [BitVec.toNat_add]
          rcases hArn with h | h
          · exact Nat.mod_eq_of_lt (by omega)
          · have : AL.toNat = 0 := by omega
            rw [this, Nat.mod_eq_of_lt (by have := Ar.isLt; omega)]
        refine hoareG_callBlk ha hmc (by simp [Helpers.sigMemcpy]) (by simp [Helpers.sigMemcpy])
          (L := NcL1 A AL B BL Ar) ?_
        intro s' _ ⟨⟨hA2, hAL2, hB2, hBL2⟩, hout⟩ _
        refine ⟨[.val (.word (Ar + AL)), .val (.word B), .val (.word BL)],
          evs_cons (ev_add2 (ev_lw hout) (ev_lw hAL2)) (evs_cons (ev_lw hB2)
            (evs_cons (ev_lw hBL2) evs_nil)),
          fun Γ' q' hB => argsOK_memcpy (bufOK_blk hB (by omega) (by simp only [hoff]; omega)),
          fun y hy => ?_⟩
        have := argCells_memcpy' hy
        rw [hoff] at this
        exact overlap_mono this (by omega) (by omega)
      · refine hoareG_return fun t _ ⟨⟨_, hout⟩, hB⟩ v _ => ?_
        exact hqa_of_hha (t := emptyLocalsHOLFinite t)
          (hha_congr (s := t) ha.hH rfl rfl rfl rfl (hha_of_blkH hB)) _
  · intro s _ ⟨⟨hA1, hAL1, hB1, hBL1⟩, Γ, q, he, hh1⟩ vs hvs callee r st hR _ habn r' hr' hna
    cases hr'
    rw [evs_cons (ev_add2 (ev_lw hAL1) (ev_lw hBL1)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna
      (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2⟩

theorem sumSpec_nibbles_concat_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "nibbles_concat") ncSig
      NcPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_nibbles_concat Wire.foldOK_guestJL

end InitECandidate.Solver.MemSafe.MptH

#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_nibbles_concat
#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_nibbles_concat_guestJL
