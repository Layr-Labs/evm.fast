import InitECandidate.Solver.MemSafe.Rec.UMin

set_option autoImplicit false

/-!
# `tx_put_u256`: exact length and footprint

```
fun 1 tx_put_u256(1 dst, U256 v) {
  var 1 mark = heap_mark(); var 1 tmp = alloc(32); var 1 n = u256_to_be_min(v, tmp);
  var 1 w = rlp_encode_bytes(dst, tmp, n); heap_release(mark); return w; }
```

**`footS_tx_put_u256`** (`PutUPre`, `PutUR`, `PutURet`): with `D + fuV v ≤ scratchEnd` and the
allocator ordered at entry, every good result keeps the globals (the window is released; the
callees after `alloc` are escape-free, `alloc` traps with the globals unchanged), changes memory
only in `[D, D + fuV v)` (`fuV v = hdrLen n + n`, `n = ubyF v`) and in the entry free heap (the
temporary), and returns `k ≤ tuelV v` (`tx_u256_encoded_len v`), `k ≤ fuV v ≤ 33`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def putUBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.decCall (nm "tmp") .one (nm "alloc") [cw 32]
      (.decCall (nm "n") .one (nm "u256_to_be_min") [lv (nm "v"), lv (nm "tmp")]
        (.decCall (nm "w") .one (nm "rlp_encode_bytes") [lv (nm "dst"), lv (nm "tmp"), lv (nm "n")]
          (.seq (.call (some (none, none)) (nm "heap_release") [lv (nm "mark")])
            (.return (lv (nm "w")))))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_tx_put_u256 : fnEntry Guest.Software.guestFn_tx_put_u256 =
    (nm "tx_put_u256", [(nm "dst", .one), (nm "v", sh4)], putUBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_tx_put_u256 : guestCode (nm "tx_put_u256") =
    some ([(nm "dst", .one), (nm "v", sh4)], putUBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 318) (by decide)) ⟨_, rfl⟩
    entry_tx_put_u256

/-! ## Lengths of a 4-word value -/

def u4V (v : ValueHOL 64) : Option (BitVec 64 × BitVec 64 × BitVec 64 × BitVec 64) :=
  match v with
  | .rStruct [.val (.word a0), .val (.word a1), .val (.word a2), .val (.word a3)] =>
      some (a0, a1, a2, a3)
  | _ => none

/-- The bytes `rlp_encode_bytes` may write for `v`: `hdrLen n + n`, `n = ubyF v`. -/
def fuF (a0 a1 a2 a3 : BitVec 64) : Nat :=
  Helpers.hdrLen (ubyF a0 a1 a2 a3).toNat + (ubyF a0 a1 a2 a3).toNat

def fuV (v : ValueHOL 64) : Nat :=
  match u4V v with
  | some (a0, a1, a2, a3) => fuF a0 a1 a2 a3
  | none => 33

/-- `tx_u256_encoded_len v`. -/
def tuelV (v : ValueHOL 64) : Nat :=
  match u4V v with
  | some (a0, a1, a2, a3) => tuelF a0 a1 a2 a3
  | none => 33

theorem fuV_wv (a0 a1 a2 a3 : BitVec 64) : fuV (wv [a0, a1, a2, a3]) = fuF a0 a1 a2 a3 := rfl
theorem tuelV_wv (a0 a1 a2 a3 : BitVec 64) : tuelV (wv [a0, a1, a2, a3]) = tuelF a0 a1 a2 a3 := rfl

theorem hdrLen_small {n : Nat} (h : n ≤ 55) : Helpers.hdrLen n = 1 := by
  unfold Helpers.hdrLen; rw [if_pos h]

theorem fuF_eq (a0 a1 a2 a3 : BitVec 64) : fuF a0 a1 a2 a3 = 1 + (ubyF a0 a1 a2 a3).toNat := by
  unfold fuF
  rw [hdrLen_small (by have := ubyF_le a0 a1 a2 a3; omega)]

theorem fuV_le (v : ValueHOL 64) : fuV v ≤ 33 := by
  unfold fuV
  match u4V v with
  | some (a0, a1, a2, a3) => show fuF a0 a1 a2 a3 ≤ 33; rw [fuF_eq]; have := ubyF_le a0 a1 a2 a3; omega
  | none => exact le_rfl

theorem tuelV_le (v : ValueHOL 64) : tuelV v ≤ 33 := by
  unfold tuelV
  match u4V v with
  | some (a0, a1, a2, a3) => exact (show tuelF a0 a1 a2 a3 ≤ 33 from (tuelF_le a0 a1 a2 a3).2)
  | none => exact le_rfl

/-! ## The spec -/

def PutUPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ (D : BitVec 64) (v : ValueHOL 64), vs = [.val (.word D), v] ∧ D.toNat + fuV v ≤ scratchEnd ∧
    ∃ p, ptrsOf s = some p ∧ p.Ordered

def PutUR (vs : List (ValueHOL 64)) (s : State σ) (a : BitVec 64) : Prop :=
  (∃ (D : BitVec 64) (v : ValueHOL 64), vs = [.val (.word D), v] ∧ Overlap D.toNat (fuV v) a) ∨
    FreeHeap s a

def PutURet (vs : List (ValueHOL 64)) (_ : State σ) (w : ValueHOL 64) : Prop :=
  ∃ k, w = .val (.word (BitVec.ofNat 64 k)) ∧ ∀ (D : BitVec 64) (v : ValueHOL 64),
    vs = [.val (.word D), v] → k ≤ tuelV v ∧ k ≤ fuV v

theorem evs_nil_eq {s : State σ} {vs : List (ValueHOL 64)} (h : evs s [] = some vs) : vs = [] := by
  rw [evs_nil] at h
  exact (Option.some.inj h).symm

theorem footS_tx_put_u256 (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hE1 : CalleeEscFree σ X (nm "u256_to_be_min"))
    (hE2 : CalleeEscFree σ X (nm "rlp_encode_bytes")) :
    FootRetS σ X (nm "tx_put_u256") PutUPre PutUR PutURet := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hP
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hla, hlb⟩ := lookupCode_two code_tx_put_u256 (by decide) hl
  obtain ⟨D, v, hvs, hD, p, hp, hord⟩ := hP
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  obtain ⟨a0, a1, a2, a3, rfl⟩ := wv4_of_shape hsB
  rw [fuV_wv, fuF_eq] at hD
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hhe : heapEnd ≤ scratchEnd := by decide
  set Vv := wv [a0, a1, a2, a3] with hVv
  set N := ubyF a0 a1 a2 a3 with hN
  have hN32 : N.toNat ≤ 32 := ubyF_le a0 a1 a2 a3
  have hdst : s0.locals.lookup (nm "dst") = some (.val (.word D)) := by rw [hloc]; exact hla
  have hv0 : s0.locals.lookup (nm "v") = some Vv := by rw [hloc]; exact hlb
  obtain ⟨H, F, S, hH, -, -, rfl⟩ := AllocImpl.ptrsOf_some hp
  have hHl := AllocImpl.lookup_of_gword hH
  let Rf := PutUR (σ := σ) [.val (.word D), Vv] s0
  let Q : Option (PanSemResultExact 64) → State σ → Prop := fun r t =>
    t.globals = s0.globals ∧ ModifiesOnly Rf s0.memory t.memory ∧
      ∀ w, r = some (.returned w) → PutURet (σ := σ) [.val (.word D), Vv] s0 w
  suffices HH : HoareG σ X (fun t => t = s0) putUBody Q by
    have := HH s0 hs0 rfl (by rw [hr]; exact hg)
    rw [hr] at this
    exact ⟨this.1, this.2.1, fun w hw => this.2.2 w (by rw [hw])⟩
  have habs : ∀ r, Abn r → ∀ w, r ≠ .returned w := by
    intro r hab w h
    subst h
    rcases hab with ⟨e, x, h⟩ | ⟨e, h⟩ <;> cases h
  unfold putUBody
  -- `var mark = heap_mark()`
  refine hoareG_decCall (markSpec'_heap_mark hC) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st hR _ habn
    subst s
    obtain ⟨hm, hg', -⟩ := hR (abn_good habn) (evs_nil_eq hvs)
    exact ⟨hg', fun c _ => (by show st.memory c = s0.memory c; rw [hm]; rfl),
      fun w hw => absurd (Option.some.inj hw) (habs r habn w)⟩
  intro s _ hs vs hvs callee v1 st hR _ _
  subst s
  obtain ⟨hm1, hg1, hret1⟩ := hR (by simp [Good]) (evs_nil_eq hvs)
  have hv1 := mark_val_word (hret1 v1 rfl) hH
  subst hv1
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun _ _ _ _ h => h)
  set s1 := setVarHOLFinite (nm "mark") (.val (.word H)) { st with locals := s0.locals } with hs1
  have hs1m : s1.memory = s0.memory := hm1
  have hs1g : s1.globals = s0.globals := hg1
  have hp1 : ptrsOf s1 = some ⟨H.toNat, F.toNat, S.toNat⟩ := by rw [AllocImpl.ptrsOf_congr hs1g]; exact hp
  -- `var tmp = alloc(32)`
  refine hoareG_decCall (FunSpec.and (allocSpec_alloc hC) (funSpec_alloc_abn hC)) ?_ ?_
  rotate_left
  · rintro s _ hs vs _ callee r st2 ⟨-, hR⟩ _ habn
    subst s
    obtain ⟨hg2, hm2⟩ := hR (abn_good habn) ⟨_, hp1⟩ habn
    exact ⟨hg2.trans hs1g, fun c _ => (by show st2.memory c = s0.memory c; rw [hm2]; exact congrFun hs1m c),
      fun w hw => absurd (Option.some.inj hw) (habs r habn w)⟩
  rintro s _ hs vs hvs callee v2 st2 ⟨hR, -⟩ _ _
  subst s
  rw [evs_cons (ev_cw _ 32) evs_nil] at hvs
  cases hvs
  obtain ⟨hm2, hgo2, p', hp', hord', hmono, hret2⟩ :=
    hR (by simp [Good]) _ _ rfl hp1 hord
  obtain ⟨T, rfl, hT8, hTlive, hTfree⟩ := hret2 v2 rfl
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
  rw [h32] at hTlive hTfree
  simp only [Region.Live] at hTlive
  have hTH : H.toNat ≤ T.toNat := by
    by_contra hlt
    exact hTfree T.toNat le_rfl (by omega) (Or.inl ⟨hTlive.1, by show T.toNat < H.toNat; omega⟩)
  have hp'e : p'.hp ≤ heapEnd := by unfold Ptrs.Ordered at hord'; omega
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun _ _ _ _ h => h)
  set s2 := setVarHOLFinite (nm "tmp") (.val (.word T)) { st2 with locals := s1.locals } with hs2
  have hs2m : s2.memory = s0.memory := by show st2.memory = s0.memory; rw [hm2]; exact hs1m
  have hs2g : ∀ g, g ≠ gHeap → s2.globals.lookup g = s0.globals.lookup g := by
    intro g hgn
    show st2.globals.lookup g = _
    rw [hgo2 g hgn]
    show s1.globals.lookup g = _
    rw [hs1g]
  have h2v : s2.locals.lookup (nm "v") = some Vv := by
    rw [hs2, lk_set_ne _ _ (by decide)]
    show s1.locals.lookup _ = _
    rw [hs1, lk_set_ne _ _ (by decide)]; exact hv0
  have h2t : s2.locals.lookup (nm "tmp") = some (.val (.word T)) := lk_set_self _ _ _
  have h2d : s2.locals.lookup (nm "dst") = some (.val (.word D)) := by
    rw [hs2, lk_set_ne _ _ (by decide)]
    show s1.locals.lookup _ = _
    rw [hs1, lk_set_ne _ _ (by decide)]; exact hdst
  have h2m : s2.locals.lookup (nm "mark") = some (.val (.word H)) := by
    rw [hs2, lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  -- `var n = u256_to_be_min(v, tmp)`
  refine hoareG_decCall (FunSpec.and (funSpec_u256_to_be_min hC) (noAbn_of_ef hE1)) ?_ ?_
  rotate_left
  · rintro s _ hs vs _ callee r st3 ⟨-, hna⟩ _ habn
    exact absurd habn hna
  rintro s _ hs vs hvs callee v3 st3 ⟨hR, -⟩ _ _
  subst s
  rw [evs_cons (by rw [ev_lv]; exact h2v) (evs_cons (ev_lw h2t) evs_nil)] at hvs
  cases hvs
  obtain ⟨hg3, hmod3, hret3⟩ := hR (by simp [Good]) a0 a1 a2 a3 T rfl (by omega)
  obtain ⟨rfl, hbyte⟩ := hret3 v3 rfl
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun _ _ _ _ h => h)
  set s3 := setVarHOLFinite (nm "n") (.val (.word N)) { st3 with locals := s2.locals } with hs3
  have h3d : s3.locals.lookup (nm "dst") = some (.val (.word D)) := by
    rw [hs3, lk_set_ne _ _ (by decide)]; exact h2d
  have h3t : s3.locals.lookup (nm "tmp") = some (.val (.word T)) := by
    rw [hs3, lk_set_ne _ _ (by decide)]; exact h2t
  have h3n : s3.locals.lookup (nm "n") = some (.val (.word N)) := lk_set_self _ _ _
  have h3m : s3.locals.lookup (nm "mark") = some (.val (.word H)) := by
    rw [hs3, lk_set_ne _ _ (by decide)]; exact h2m
  -- `var w = rlp_encode_bytes(dst, tmp, n)`
  refine hoareG_decCall (FunSpec.and (FunSpec.and (footRet_rlp_encode_bytes hC hA)
    (funSpec_rlp_encode_bytes_one hC)) (noAbn_of_ef hE2)) ?_ ?_
  rotate_left
  · rintro s _ hs vs _ callee r st4 ⟨-, hna⟩ _ habn
    exact absurd habn hna
  rintro s _ hs vs hvs callee v4 st4 ⟨⟨hR, hR1⟩, -⟩ _ _
  subst s
  rw [evs_cons (ev_lw h3d) (evs_cons (ev_lw h3t) (evs_cons (ev_lw h3n) evs_nil))] at hvs
  cases hvs
  have hhN : Helpers.hdrLen N.toNat = 1 := hdrLen_small (by omega)
  obtain ⟨hg4, hmod4, hret4⟩ := hR (by simp [Good]) ⟨D, N, rfl, rfl, by rw [hhN]; omega⟩
  obtain ⟨k, rfl, hk1, hk2, hk3⟩ := hret4 _ rfl N rfl
  have hk1' : N.toNat = 1 → a0.toNat < 128 → k = 1 := by
    intro h1 ha0
    have hN1 : N = BitVec.ofNat 64 1 := BitVec.eq_of_toNat_eq (by rw [h1]; rfl)
    have hb := hbyte h1
    have := hR1 (by simp [Good]) D T (by rw [hN1]) (by
      show Spec.Mpt.byteOf st3.memory st3.be T < 128
      rw [hb]; omega) _ rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
    have hk := congrArg BitVec.toNat this
    rw [hhN] at hk2
    simp at hk
    omega
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun _ _ _ _ h => h)
  set s4 := setVarHOLFinite (nm "w") (.val (.word (BitVec.ofNat 64 k)))
    { st4 with locals := s3.locals } with hs4
  have h4w : s4.locals.lookup (nm "w") = some (.val (.word (BitVec.ofNat 64 k))) := lk_set_self _ _ _
  have h4m : s4.locals.lookup (nm "mark") = some (.val (.word H)) := by
    rw [hs4, lk_set_ne _ _ (by decide)]; exact h3m
  -- the memory so far
  have hR4 : ∀ c, ¬ Rf c → s4.memory c = s0.memory c := by
    intro c hc
    have hc1 : ¬ EncR [.val (.word D), .val (.word T), .val (.word N)] c := by
      rintro ⟨D', N', hD', hN', hov⟩
      cases hD'
      cases hN'
      exact hc (Or.inl ⟨D, Vv, rfl, by rw [fuV_wv]; exact hov⟩)
    have hc2 : ¬ Overlap T.toNat 32 c := by
      rintro ⟨h8, h1, h2⟩
      refine hc (Or.inr ⟨H, hH, by omega, by omega⟩)
    show st4.memory c = s0.memory c
    rw [hmod4 c hc1]
    show st3.memory c = s0.memory c
    rw [hmod3 c hc2]
    exact congrFun hs2m c
  have hg4' : ∀ g, g ≠ gHeap → s4.globals.lookup g = s0.globals.lookup g := by
    intro g hgn
    show st4.globals.lookup g = _
    rw [hg4]
    show st3.globals.lookup g = _
    rw [hg3]
    exact hs2g g hgn
  have hretk : PutURet (σ := σ) [.val (.word D), Vv] s0 (.val (.word (BitVec.ofNat 64 k))) := by
    refine ⟨k, rfl, fun D' v' he => ?_⟩
    simp only [List.cons.injEq, and_true] at he
    obtain ⟨-, rfl⟩ := he
    rw [tuelV_wv, fuV_wv, fuF_eq]
    rw [hhN] at hk2
    refine ⟨?_, by omega⟩
    unfold tuelF
    rw [← hN]
    by_cases h0 : N.toNat = 0
    · rw [if_pos h0]; have := hk3 (by omega); rw [hhN] at this; omega
    · rw [if_neg h0]
      by_cases h1 : N.toNat = 1
      · by_cases ha0 : a0.toNat < 128
        · rw [if_pos ⟨h1, ha0⟩]; exact le_of_eq (hk1' h1 ha0)
        · rw [if_neg (fun h => ha0 h.2)]; omega
      · rw [if_neg (fun h => h1 h.1)]; have := hk3 h1; rw [hhN] at this; omega
  -- `heap_release(mark); return w`
  have hrel : ∀ st5 : State σ, st5.memory = s4.memory →
      st5.globals.lookup gHeap = some (.val (.word H)) →
      (∀ g', g' ≠ gHeap → st5.globals.lookup g' = s4.globals.lookup g') →
      st5.globals = s0.globals ∧ ModifiesOnly Rf s0.memory st5.memory := by
    intro st5 hm5 hgh hgo
    refine ⟨AllocImpl.hfm_ext (funext fun g => ?_), fun c hc => (by rw [hm5]; exact hR4 c hc)⟩
    by_cases hgn : g = gHeap
    · subst hgn; rw [hgh, hHl]
    · rw [hgo g hgn, hg4' g hgn]
  refine hoareG_seq (R := fun r t => (r = none ∧ t.locals = s4.locals ∧ Q none t) ∨
    (r ≠ none ∧ Q r t)) ?_ (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_callD (releaseSpec_heap_release hC) ?_ ?_
    · intro s _ hs vs hvs callee v5 st5 hR5 _
      subst s
      rw [evs_cons (ev_lw h4m) evs_nil] at hvs
      cases hvs
      obtain ⟨hm5, hgh, hgo⟩ := hR5 (by simp [Good]) H rfl
      obtain ⟨hgl5, hmod5⟩ := hrel st5 hm5 hgh hgo
      exact Or.inl ⟨rfl, rfl, hgl5, hmod5, fun w hw => nomatch hw⟩
    · intro s _ hs vs hvs callee r st5 hR5 _ habn
      subst s
      rw [evs_cons (ev_lw h4m) evs_nil] at hvs
      cases hvs
      obtain ⟨hm5, hgh, hgo⟩ := hR5 (abn_good habn) H rfl
      obtain ⟨hgl5, hmod5⟩ := hrel st5 hm5 hgh hgo
      exact Or.inr ⟨by simp, hgl5, hmod5, fun w hw => absurd (Option.some.inj hw) (habs r habn w)⟩
  · refine hoareG_return fun t _ h w hw => ?_
    rcases h with ⟨-, htl, hgl, hmod, -⟩ | ⟨h, -⟩
    · rw [ev_lw (by rw [htl]; exact h4w)] at hw
      cases hw
      exact ⟨hgl, hmod, fun w' hw' => by cases hw'; exact hretk⟩
    · exact absurd rfl h

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.footS_tx_put_u256
