import InitECandidate.Solver.MemSafe.MptH.Common

set_option autoImplicit false

/-!
# `compact_to_nibbles`: the summary

```
fun {1,1,1} compact_to_nibbles(1 p, 1 n) {
  if n == 0 { mpt_fail(5); }
  var c0 = ld8 p; var first = c0 >>> 4; var is_leaf = (first >>> 1) & 1; var odd = first & 1;
  var 1 out = alloc(2 * n);
  var k = 0;
  if odd != 0 { st8 out, c0 & 15; k = 1; }
  key_to_nibbles(p + 1, n - 1, out + k);
  return <out, k + 2 * (n - 1), is_leaf>; }
```

`ctnSig = ⟨[any, any], [], [], false⟩`. **Precondition** `CtnPre`: `2 * n < 2^64` (the size
`2 * n` of the allocation does not wrap; otherwise `key_to_nibbles` could not be given its buffer).
`mpt_fail` never returns (`funRet_mpt_fail`), so `n ≥ 1` afterwards and `n - 1` does not wrap. The
block `[out, out + 2 n)` is a caller temporary: the byte store at `out` and the `key_to_nibbles`
call (`sigKeyToNibbles = [any, any, bufArg 1 2 0]`, buffer `out + k`, `2 (n - 1)` bytes, `k ≤ 1`)
lie inside it. The result type is `[]`.

Assumed callee summaries: `mpt_fail : CSumm … sgMF []` (`sgMF = ⟨[any], [], [], false⟩`, the
fold's entry), `key_to_nibbles` (proved: `Helpers.summ_key_to_nibbles`), `alloc` (builtin).
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

def ctnBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "n")) (cw 0)) (callD (nm "mpt_fail") [cw 5]) .skip)
    (.dec (nm "c0") .one (.loadByte (lv (nm "p")))
      (.dec (nm "first") .one (.shift .lsr (lv (nm "c0")) (cw 4))
        (.dec (nm "is_leaf") .one (.op .and [.shift .lsr (lv (nm "first")) (cw 1), cw 1])
          (.dec (nm "odd") .one (.op .and [lv (nm "first"), cw 1])
            (.decCall (nm "out") .one (nm "alloc") [.panop .mul [cw 2, lv (nm "n")]]
              (.dec (nm "k") .one (cw 0)
                (.seq (.ite (.cmp .notEqual (lv (nm "odd")) (cw 0))
                    (.seq (.storeByte (lv (nm "out")) (.op .and [lv (nm "c0"), cw 15]))
                      (.assign .local (nm "k") (cw 1)))
                    .skip)
                  (.seq (callD (nm "key_to_nibbles")
                      [.op .add [lv (nm "p"), cw 1], .op .sub [lv (nm "n"), cw 1],
                       .op .add [lv (nm "out"), lv (nm "k")]])
                    (.return (.rstruct [lv (nm "out"),
                      .op .add [lv (nm "k"), .panop .mul [cw 2, .op .sub [lv (nm "n"), cw 1]]],
                      lv (nm "is_leaf")]))))))))))

def ctnPs : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "n", .one)]

theorem entry_compact_to_nibbles : fnEntry Guest.Software.guestFn_compact_to_nibbles =
    (nm "compact_to_nibbles", ctnPs, ctnBody, .comb [.one, .one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_compact_to_nibbles : guestCode (nm "compact_to_nibbles") =
    some (ctnPs, ctnBody, .comb [.one, .one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 249) (by decide)) ⟨_, rfl⟩
    entry_compact_to_nibbles

def ctnSig : Sig := ⟨[.any, .any], [], [], false⟩

/-- **Caller obligation**: `2 * n` does not wrap. -/
def CtnPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ N : BitVec 64, argW vs 1 = some N → 2 * N.toNat < 2 ^ 64

def NL (P N : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N))

theorem nl_set {P N : BitVec 64} {x : MlS} (h1 : x ≠ nm "p") (h2 : x ≠ nm "n") (v : ValueHOL 64)
    {s : State σ} (h : NL P N s.locals) : NL P N (setVarHOLFinite x v s).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2⟩

/-- After `out`. -/
def NL1 (P N Ar : BitVec 64) (m : LocalsH) : Prop :=
  NL P N m ∧ m.lookup (nm "out") = some (.val (.word Ar))

/-- After `k`. -/
def NL2 (P N Ar : BitVec 64) (m : LocalsH) : Prop :=
  NL1 P N Ar m ∧ ∃ K : BitVec 64, m.lookup (nm "k") = some (.val (.word K)) ∧ K.toNat ≤ 1

theorem sumSpec_compact_to_nibbles {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hMF : CSumm σ X Types.guestC H (nm "mpt_fail") Integ.sgMF []) :
    SumSpecA σ X Types.guestC H (nm "compact_to_nibbles") ctnSig CtnPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have halloc : CSumm σ X Types.guestC H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hk2n : CSumm σ X Types.guestC H (nm "key_to_nibbles") Helpers.sigKeyToNibbles [] :=
    csumm_of_summ (Helpers.summ_key_to_nibbles hF.hH Helpers.tagSlots_guestC hX)
  have hnr := funRet_mpt_fail (σ := σ) hX
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Pv, Nv, rfl, hsP, hsN, hlp, hln⟩ :=
    lookupCode_two code_compact_to_nibbles (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsP
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsN
  have hN2 : 2 * N.toNat < 2 ^ 64 := hpre N rfl
  set a := actOf Types.guestC H ctnSig [] [.val (.word P), .val (.word N)] s0 Γ0 p0 with hadef
  refine hoareG_conseq (P := PreH a (NL P N)) (Q := HQa a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hlp, by rw [hloc]; exact hln⟩, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [ctnSig] at hrt⟩
  unfold ctnBody
  -- the guard `if n == 0 { mpt_fail(5); }`
  refine hoareG_seqSP (L := fun m => NL P N m ∧ N.toNat ≠ 0) hqa_of_abn ?_ ?_
  · refine hoareG_iteSP ?_ ?_
    · exact hoareG_pre (Integ.hoareG_failSP ha hMF hnr (by simp [Integ.sgMF]) (by simp [Integ.sgMF])
        (Integ.anyArgs (by simp [Integ.sgMF]) rfl)) fun _ _ h => h.1
    · refine hoareG_skip fun s _ ⟨⟨⟨hL, hLn⟩, hH'⟩, hc⟩ => ⟨fun _ => ⟨⟨⟨hL, hLn⟩, ?_⟩, hH'⟩,
        fun r' h => absurd h (by simp)⟩
      have := cmp_val_false hc (ev_lw hLn) (ev_cw _ 0)
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_eq_false_iff_ne, ne_eq] at this
      intro h0
      exact this (BitVec.eq_of_toNat_eq (by simpa using h0))
  -- the locals
  refine hoareG_decH ha.hH (L' := fun m => NL P N m ∧ N.toNat ≠ 0) (fun s _ h v _ =>
    ⟨nl_set (by decide) (by decide) v h.1, h.2⟩) ?_
  refine hoareG_decH ha.hH (L' := fun m => NL P N m ∧ N.toNat ≠ 0) (fun s _ h v _ =>
    ⟨nl_set (by decide) (by decide) v h.1, h.2⟩) ?_
  refine hoareG_decH ha.hH (L' := fun m => NL P N m ∧ N.toNat ≠ 0) (fun s _ h v _ =>
    ⟨nl_set (by decide) (by decide) v h.1, h.2⟩) ?_
  refine hoareG_decH ha.hH (L' := fun m => NL P N m ∧ N.toNat ≠ 0) (fun s _ h v _ =>
    ⟨nl_set (by decide) (by decide) v h.1, h.2⟩) ?_
  refine hoareG_decCall (summ_funSpec halloc) ?_ ?_
  · intro s _ ⟨⟨hL, hN0⟩, Γ, q, he, hh1⟩ vs hvs callee v st hR _ hsh
    rw [evs_cons (ev_mul2 (ev_cw _ 2) (ev_lw hL.2)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, hm2, hnf2, hret⟩ := heap_call ha hh1 hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨x, hx, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Ar rfl (by rw [flattenHOL]; rfl)
    have hxe : x = BitVec.ofNat 64 2 * N := by
      simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
      exact hx.symm
    subst hxe
    have h2N : (BitVec.ofNat 64 2 * N).toNat = 2 * N.toNat := by
      rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 2) (by omega),
        Nat.mod_eq_of_lt (by omega)]
    rw [h2N] at hfb
    have hfb' : FreshBuf Γ2 q q2 Ar (2 * N.toNat) := by simpa using hfb
    clear hfb
    have hord1 := heap_ord hh1
    have hord2 := heap_ord hh2
    have hm1 : a.p0.Mono q := hh1.2.2.1
    have hArn : Ar.toNat + 2 * N.toNat < 2 ^ 64 := by
      rcases freshBuf_bound hord1 hord2 hfb' with h | h
      · omega
      · exact h
    have hblkF : BlkF Ar (2 * N.toNat) Γ2 q2 := fun y hy =>
      ⟨(hfb'.2 y hy).2, fresh_alloc hord1 (hfb'.2 y hy).1⟩
    have hblkN : ∀ y : BitVec 64, Overlap Ar.toNat (2 * N.toNat) y →
        ¬ a.p0.Allocated y.toNat := fun y hy =>
      fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2) (fresh_mono hm1 (hfb'.2 y hy).1)
    refine hoareG_conseq (Q := HQa a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqa_locals ha.hH _ h)
    set st' := setVarHOLFinite (nm "out") (.val (.word Ar)) { st with locals := s.locals }
      with hst'
    have hL1 : NL1 P N Ar st'.locals := by
      refine ⟨⟨?_, ?_⟩, lk_set_self _ _ _⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hL.1
      · rw [lk_set_ne _ _ (by decide)]; exact hL.2
    have hB1' : BlkH a Ar (2 * N.toNat) st' :=
      ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hblkF, hblkN⟩
    refine hoareG_pre (P := fun t => NL1 P N Ar t.locals ∧ BlkH a Ar (2 * N.toNat) t)
      ?_ (fun t _ ht => ?_)
    swap
    · subst ht
      exact ⟨hL1, hB1'⟩
    -- `var k = 0`
    refine hoareG_decB ha.hH (L' := NL2 P N Ar) (fun s' _ h v hv => ?_) ?_
    · rw [ev_cw] at hv
      cases hv
      refine ⟨⟨⟨?_, ?_⟩, ?_⟩, BitVec.ofNat 64 0, lk_set_self _ _ _, by simp⟩
      · rw [lk_set_ne _ _ (by decide)]; exact h.1.1
      · rw [lk_set_ne _ _ (by decide)]; exact h.1.2
      · rw [lk_set_ne _ _ (by decide)]; exact h.2
    have hbq : ∀ r (t : State σ), r ≠ none →
        (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) →
        BQ a (NL2 P N Ar) Ar (2 * N.toNat) r t := fun r t hr h => ⟨fun h' => absurd h' hr, h⟩
    refine hoareG_seqB (L := NL2 P N Ar) (Ar := Ar) (n := 2 * N.toNat) hqa_of_abn ?_ ?_
    · -- `if odd != 0 { st8 out, c0 & 15; k = 1; }`
      refine hoareG_ite (hoareG_pre ?_ fun s' _ h => h.1) (hoareG_pre ?_ fun s' _ h => h.1)
      · refine hoareG_seqB (L := NL2 P N Ar) (Ar := Ar) (n := 2 * N.toNat) hbq ?_ ?_
        · refine hoareG_stbBlk ha (L := NL2 P N Ar) (fun s' _ h w hw => ?_)
          have := ev_lw h.1.2
          rw [this] at hw
          cases hw
          omega
        · refine hoareG_assignB ha.hH (L := NL2 P N Ar) (fun s' _ h v hv => ?_)
          rw [ev_cw] at hv
          cases hv
          refine ⟨⟨⟨?_, ?_⟩, ?_⟩, BitVec.ofNat 64 1, lk_set_self _ _ _, by simp⟩
          · rw [lk_set_ne _ _ (by decide)]; exact h.1.1.1
          · rw [lk_set_ne _ _ (by decide)]; exact h.1.1.2
          · rw [lk_set_ne _ _ (by decide)]; exact h.1.2
      · exact hoareG_skipB fun m h => h
    · -- `key_to_nibbles(p + 1, n - 1, out + k)`
      have hN1 : (N - BitVec.ofNat 64 1).toNat = N.toNat - 1 := by
        rw [BitVec.toNat_sub_of_le (BitVec.le_def.mpr (by simp; omega))]
        simp
      refine hoareG_seqB (L := NL2 P N Ar) (Ar := Ar) (n := 2 * N.toNat) hqa_of_abn ?_ ?_
      · refine hoareG_callBlk ha hk2n (by simp [Helpers.sigKeyToNibbles])
          (by simp [Helpers.sigKeyToNibbles]) (L := NL2 P N Ar) ?_
        intro s' _ ⟨⟨⟨hp, hn⟩, hout⟩, K, hk, hK⟩ _
        have hAK : (Ar + K).toNat = Ar.toNat + K.toNat := by
          rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
        refine ⟨[.val (.word (P + BitVec.ofNat 64 1)), .val (.word (N - BitVec.ofNat 64 1)),
            .val (.word (Ar + K))],
          evs_cons (ev_add2 (ev_lw hp) (ev_cw _ 1)) (evs_cons (ev_sub2 (ev_lw hn) (ev_cw _ 1))
            (evs_cons (ev_add2 (ev_lw hout) (ev_lw hk)) evs_nil)),
          fun Γ' q' hB => argsOK_k2n (bufOK_blk hB (by omega) (by rw [hAK, hN1]; omega)) _,
          fun y hy => ?_⟩
        have := argCells_k2n hy
        rw [hAK, hN1] at this
        exact overlap_mono' this (by omega) (by omega)
      · refine hoareG_return fun t _ ⟨_, hB⟩ v _ => ?_
        exact hqa_of_hha (t := emptyLocalsHOLFinite t)
          (hha_congr (s := t) ha.hH rfl rfl rfl rfl (hha_of_blkH hB)) _
  · intro s _ ⟨⟨hL, hN0⟩, Γ, q, he, hh1⟩ vs hvs callee r st hR _ habn r' hr' hna
    cases hr'
    rw [evs_cons (ev_mul2 (ev_cw _ 2) (ev_lw hL.2)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna
      (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2⟩

theorem sumSpec_compact_to_nibbles_guestJL {σ : Type}
    (hMF : CSumm σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "mpt_fail")
      Integ.sgMF []) :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "compact_to_nibbles")
      ctnSig CtnPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_compact_to_nibbles Wire.foldOK_guestJL hMF

end InitECandidate.Solver.MemSafe.MptH

#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_compact_to_nibbles
#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_compact_to_nibbles_guestJL
