import InitECandidate.Solver.MemSafe.Rec.SplitVar
import InitECandidate.Solver.Spec.Mpt.Leaves.Slices

set_option autoImplicit false

/-!
# `ssz_split_var_list`: the located result

`freshFoot_ssz_split_var_list : FreshFoot … SvPre SvQ`. For a buffer `[P, P + N)` below `heapEnd`
(`SvPre`), a run that returns `<arr, cnt>` has:

* `arr` a fresh heap block `[arr, arr + 16 cnt) ⊆ [.., p'.hp)` (above the entry `heap_ptr` when
  nonempty), `cnt < 2^30`, `8 ∣ arr`, `4 cnt ≤ N`, `cnt ≤ lim`;
* all `cnt` slices inside `[P, P + N)` (`Dec.SIn`): pointer `≥ P`, pointer plus length `≤ P + N`.

No bytes of the buffer are tracked: the offsets read by the loop are only ever compared
(`first ≤ o ≤ len`, `prev ≤ o`), and the stores hit fresh cells of the new array.
The proof is the `Hoare` (non-`G`) twin of `csumm_ssz_split_var_list` in the style of
`Spec/Mpt/Leaves/Slices.lean`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt (upd rd_upd upd_out ptrsOf_frame)
open InitECandidate.Solver.Spec.Mpt.Dec (FreshFoot SIn hoare_store_eq hoare_seq_eq hoare_assign_eq
  hoare_assign_fin)
open InitECandidate.Solver.Spec.Mpt.Leaves (FF ff_refl ff_empty ff_locals ff_callee ff_store ff_mem
  hoare_decL hoare_decCallL hoare_retGuard FPost fpost_locals fpost_of_ff freshFoot_of mono_trans'
  alloc_start ne_of_toNat_ne cond_lt cond_ge not_alloc_of_mono)

variable {σ : Type} {X : Ctx 64}

/-! ## Statement -/

/-- The precondition: the buffer `[P, P + N)` does not wrap (it lies below `heapEnd`). -/
def SvPre (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ P N L : BitVec 64, vs = [.val (.word P), .val (.word N), .val (.word L)] ∧
    P.toNat + N.toNat ≤ heapEnd

/-- The located result. -/
def SvQ (vs : List (ValueHOL 64)) (p p' : Ptrs) (M : Mem) (v : ValueHOL 64) : Prop :=
  ∀ arr cnt : BitVec 64, v = .rStruct [.val (.word arr), .val (.word cnt)] →
    (0 < cnt.toNat → p.hp ≤ arr.toNat) ∧ arr.toNat + 16 * cnt.toNat ≤ p'.hp ∧
      cnt.toNat < 2 ^ 30 ∧ arr.toNat % 8 = 0 ∧ ∀ P N L : BitVec 64,
        vs = [.val (.word P), .val (.word N), .val (.word L)] →
          cnt.toNat ≤ L.toNat ∧ 4 * cnt.toNat ≤ N.toNat ∧ SIn M arr cnt.toNat P.toNat (P.toNat + N.toNat)

/-! ## Helpers -/

/-- `if c { ssz_fail(k); }` with `ssz_fail` never returning: a tracked end is a normal one with
the condition false. -/
theorem hoare_sFail' (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    {P : State σ → Prop} {c : ExpHOL 64} {k : Nat} :
    Hoare σ X P (sFail c k) (fun r t => r = none ∧ P t ∧ ev t c = some (.val (.word 0))) := by
  unfold sFail
  refine hoare_ite ?_ (hoare_skip fun s _ ⟨hp, hc⟩ => ⟨rfl, hp, hc⟩)
  refine hoare_callD (funSpec_of_funRet hfr) ?_
  intro s _ _ vs _ callee v st hR _
  exact (hR v rfl).elim

theorem hoare_seqFail (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    {P : State σ → Prop} {c : ExpHOL 64} {k : Nat} {b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hb : Hoare σ X (fun t => P t ∧ ev t c = some (.val (.word 0))) b Q) :
    Hoare σ X P (.seq (sFail c k) b) Q :=
  hoare_seq (hoare_sFail' hfr) (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoare_pre hb fun _ _ h => h.2)

theorem hoare_of_eq {P : State σ → Prop} {b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ s : State σ, InCtx s X → P s → Hoare σ X (fun t => t = s) b Q) : Hoare σ X P b Q :=
  fun s hs hp ht => h s hs hp s hs rfl ht

theorem signed_ge {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63)
    (h : wordCmpHOL .less x y = false) : y.toNat ≤ x.toNat := by
  simp only [wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess] at h
  rw [if_pos (by simpa using hx), if_pos (by simpa using hy)] at h
  simpa using h

/-- After the second check: `4 ≤ first ≤ len`. -/
theorem svC1_false' {s : State σ} {F N : BitVec 64}
    (hF : s.locals.lookup (nm "first") = some (.val (.word F)))
    (hN : s.locals.lookup (nm "len") = some (.val (.word N)))
    (h : ev s svC1 = some (.val (.word 0))) : 4 ≤ F.toNat ∧ F.toNat ≤ N.toNat := by
  have e1 := ev_cmp (o := .equal) (ev_lw hF) (ev_cw s 0)
  have e2 := ev_cmp (o := .notEqual) (ev_and_cw (ev_lw hF) 3) (ev_cw s 0)
  have e3 := ev_cmp (o := .lower) (ev_lw hN) (ev_lw hF)
  have eor := ev_op (o := .or) (xs := [_, _, _]) (evs_cons e1 (evs_cons e2 (evs_cons e3 evs_nil)))
  simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr, Option.map_some] at eor
  unfold svC1 at h
  rw [ev_cmp (ev_cw s 0) eor] at h
  generalize hc1 : wordCmpHOL Cmp.equal F (BitVec.ofNat 64 0) = c1 at h
  generalize hc2 : wordCmpHOL Cmp.notEqual (F &&& BitVec.ofNat 64 3) (BitVec.ofNat 64 0) = c2 at h
  generalize hc3 : wordCmpHOL Cmp.lower N F = c3 at h
  cases c1 <;> cases c2 <;> cases c3 <;> simp [wordCmpHOL] at h <;>
    (try exact absurd h (by decide))
  all_goals
    have h5 := lower_false hc3
    simp only [wordCmpHOL, beq_eq_false_iff_ne, Bool.not_eq_false', beq_iff_eq, ne_eq] at hc1 hc2
    have h3 : (F &&& BitVec.ofNat 64 3).toNat = F.toNat % 4 := by
      rw [BitVec.toNat_and, BitVec.toNat_ofNat]
      exact Nat.and_two_pow_sub_one_eq_mod F.toNat 2
    have h0 : F.toNat ≠ 0 := fun h0 => hc1 (BitVec.eq_of_toNat_eq (by simpa using h0))
    have h4 : F.toNat % 4 = 0 := by rw [← h3, hc2]; rfl
    exact ⟨by omega, h5⟩

/-- After `if (o <+ first) || (len <+ o) || (o <+ prev) { ssz_fail(23); }`. -/
theorem svC2_false {s : State σ} {F N O Pr : BitVec 64}
    (hF : s.locals.lookup (nm "first") = some (.val (.word F)))
    (hN : s.locals.lookup (nm "len") = some (.val (.word N)))
    (hO : s.locals.lookup (nm "o") = some (.val (.word O)))
    (hP : s.locals.lookup (nm "prev") = some (.val (.word Pr)))
    (h : ev s svC2 = some (.val (.word 0))) : O.toNat ≤ N.toNat ∧ Pr.toNat ≤ O.toNat := by
  have e1 := ev_cmp (o := .lower) (ev_lw hO) (ev_lw hF)
  have e2 := ev_cmp (o := .lower) (ev_lw hN) (ev_lw hO)
  have e3 := ev_cmp (o := .lower) (ev_lw hO) (ev_lw hP)
  have eor := ev_op (o := .or) (xs := [_, _, _]) (evs_cons e1 (evs_cons e2 (evs_cons e3 evs_nil)))
  simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr, Option.map_some] at eor
  unfold svC2 at h
  rw [ev_cmp (ev_cw s 0) eor] at h
  generalize hc1 : wordCmpHOL Cmp.lower O F = c1 at h
  generalize hc2 : wordCmpHOL Cmp.lower N O = c2 at h
  generalize hc3 : wordCmpHOL Cmp.lower O Pr = c3 at h
  cases c1 <;> cases c2 <;> cases c3 <;> simp [wordCmpHOL] at h <;>
    (try exact absurd h (by decide))
  all_goals
    exact ⟨lower_false hc2, lower_false hc3⟩


theorem toNat_add_lt' {a b : BitVec 64} (h : a.toNat + b.toNat < 2 ^ 64) :
    (a + b).toNat = a.toNat + b.toNat := by
  rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt h

/-! ## The loop invariant -/

/-- The slices `0 … I - 2` are complete and inside the buffer; the pointer of slice `I - 1` is
`P + prev`. -/
def SvMem (M : Mem) (P N Ar I Pr : BitVec 64) : Prop :=
  (0 < I.toNat → rd M (Ar + BitVec.ofNat 64 (16 * (I.toNat - 1))) = P + Pr) ∧
    SIn M Ar (I.toNat - 1) P.toNat (P.toNat + N.toNat)

/-- The fixed part: allocator pointers, fresh writes, the locals that never change. -/
def SvB (p q2 : Ptrs) (M0 : Mem) (P N Cn Ar : BitVec 64) (t : State σ) : Prop :=
  ptrsOf t = some q2 ∧ (∀ a : BitVec 64, t.memory a ≠ M0 a → ¬ p.Allocated a.toNat) ∧
    t.locals.lookup (nm "p") = some (.val (.word P)) ∧
    t.locals.lookup (nm "len") = some (.val (.word N)) ∧
    t.locals.lookup (nm "count") = some (.val (.word Cn)) ∧
    t.locals.lookup (nm "arr") = some (.val (.word Ar)) ∧
    ∃ F : BitVec 64, t.locals.lookup (nm "first") = some (.val (.word F))

def SvLk (I Pr O : BitVec 64) (t : State σ) : Prop :=
  t.locals.lookup (nm "i") = some (.val (.word I)) ∧
    t.locals.lookup (nm "prev") = some (.val (.word Pr)) ∧
    t.locals.lookup (nm "o") = some (.val (.word O))

/-- The loop invariant. -/
def SvI (p q2 : Ptrs) (M0 : Mem) (P N Cn Ar : BitVec 64) (t : State σ) : Prop :=
  SvB p q2 M0 P N Cn Ar t ∧ ∃ I Pr : BitVec 64, t.locals.lookup (nm "i") = some (.val (.word I)) ∧
    t.locals.lookup (nm "prev") = some (.val (.word Pr)) ∧ I.toNat ≤ Cn.toNat ∧
    Pr.toNat ≤ N.toNat ∧ SvMem t.memory P N Ar I Pr

/-- Inside an iteration, before the conditional store. -/
def SvPre1 (p q2 : Ptrs) (M0 : Mem) (P N Cn Ar I Pr O : BitVec 64) (t : State σ) : Prop :=
  SvB p q2 M0 P N Cn Ar t ∧ SvLk I Pr O t ∧ SvMem t.memory P N Ar I Pr

/-- After the conditional store: all `I` slices before the current one are complete. -/
def SvMid (p q2 : Ptrs) (M0 : Mem) (P N Cn Ar I Pr O : BitVec 64) (t : State σ) : Prop :=
  SvB p q2 M0 P N Cn Ar t ∧ SvLk I Pr O t ∧ SIn t.memory Ar I.toNat P.toNat (P.toNat + N.toNat)

structure SvFix (p q2 : Ptrs) (P N Cn Ar : BitVec 64) : Prop where
  hPN : P.toNat + N.toNat ≤ heapEnd
  hC30 : Cn.toNat < 2 ^ 30
  hC1 : 1 ≤ Cn.toNat
  al : Ar.toNat % 8 = 0
  h4N : 4 * Cn.toNat ≤ N.toNat
  q2o : q2.Ordered
  mono : p.Mono q2
  start : p.hp ≤ Ar.toNat
  arr2 : Ar.toNat + 16 * Cn.toNat ≤ q2.hp
  fresh : ∀ a, Ar.toNat ≤ a → a < Ar.toNat + 16 * Cn.toNat → ¬ p.Allocated a

theorem SvFix.hAC {p q2 : Ptrs} {P N Cn Ar : BitVec 64} (hF : SvFix p q2 P N Cn Ar) :
    Ar.toNat + 16 * Cn.toNat < 2 ^ 64 := by
  have h1 := hF.q2o.2.1
  have h2 := hF.arr2
  unfold heapEnd at h1
  omega

theorem cellN {Ar : BitVec 64} {Cn k : Nat} (hAC : Ar.toNat + 16 * Cn < 2 ^ 64) (hk : k < 16 * Cn) :
    (Ar + BitVec.ofNat 64 k).toNat = Ar.toNat + k := by
  have hk' : (BitVec.ofNat 64 k).toNat = k := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  rw [BitVec.toNat_add, hk']; exact Nat.mod_eq_of_lt (by omega)

theorem svb_mem {p q2 : Ptrs} {M0 : Mem} {P N Cn Ar : BitVec 64} {t t' : State σ}
    (h : SvB p q2 M0 P N Cn Ar t) (hl : t'.locals = t.locals) (hg : t'.globals = t.globals)
    (hw : ∀ a : BitVec 64, t'.memory a ≠ t.memory a → ¬ p.Allocated a.toNat) :
    SvB p q2 M0 P N Cn Ar t' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7⟩ := h
  refine ⟨(ptrsOf_frame hg).trans h1, fun a ha => ?_, by rw [hl]; exact h3, by rw [hl]; exact h4,
    by rw [hl]; exact h5, by rw [hl]; exact h6, by rw [hl]; exact h7⟩
  by_cases e : t'.memory a = t.memory a
  · exact h2 a (by rw [← e]; exact ha)
  · exact hw a e

/-- Storing the length of slice `c` completes it. -/
theorem sIn_snoc {M : Mem} {Ar P N Pr X : BitVec 64} {c c' : Nat} (hc' : c' = c + 1)
    (hAC : Ar.toNat + 16 * c' < 2 ^ 64) (hPN : P.toNat + N.toNat ≤ heapEnd)
    (h : SIn M Ar c P.toNat (P.toNat + N.toNat))
    (hp : rd M (Ar + BitVec.ofNat 64 (16 * c)) = P + Pr) (hPX : Pr.toNat ≤ X.toNat)
    (hXN : X.toNat ≤ N.toNat) :
    SIn (upd M (Ar + BitVec.ofNat 64 (16 * c + 8)) (.word (X - Pr))) Ar c' P.toNat
      (P.toNat + N.toNat) := by
  subst hc'
  have hP64 : P.toNat + N.toNat < 2 ^ 64 := by unfold heapEnd at hPN; omega
  have hne : ∀ k, k ≠ 16 * c + 8 → k < 16 * (c + 1) →
      Ar + BitVec.ofNat 64 k ≠ Ar + BitVec.ofNat 64 (16 * c + 8) := fun k hk hk2 =>
    ne_of_toNat_ne (by rw [cellN hAC hk2, cellN hAC (by omega)]; omega)
  intro j hj
  have e1 := hne (16 * j) (by omega) (by omega)
  by_cases hjc : j = c
  · subst hjc
    rw [rd_upd, if_neg e1, rd_upd, if_pos rfl, hp]
    have h1 : (P + Pr).toNat = P.toNat + Pr.toNat := toNat_add_lt' (by omega)
    have h2 : (X - Pr).toNat = X.toNat - Pr.toNat := by
      rw [BitVec.toNat_sub]; have := X.isLt; omega
    rw [h1, h2]
    omega
  · have e2 := hne (16 * j + 8) (by omega) (by omega)
    rw [rd_upd, if_neg e1, rd_upd, if_neg e2]
    exact h j (by omega)

/-- Storing the pointer of slice `c` keeps the earlier slices. -/
theorem sIn_ptr {M : Mem} {Ar : BitVec 64} {c c' : Nat} {lo hi : Nat} {x : BitVec 64}
    (hAC : Ar.toNat + 16 * c' < 2 ^ 64) (hc2 : c < c')
    (h : SIn M Ar c lo hi) :
    SIn (upd M (Ar + BitVec.ofNat 64 (16 * c)) (.word x)) Ar c lo hi := by
  intro j hj
  have hne : ∀ k, k ≠ 16 * c → k < 16 * c' →
      Ar + BitVec.ofNat 64 k ≠ Ar + BitVec.ofNat 64 (16 * c) := fun k hk hk2 =>
    ne_of_toNat_ne (by rw [cellN hAC hk2, cellN hAC (by omega)]; omega)
  rw [rd_upd, if_neg (hne _ (by omega) (by omega)), rd_upd, if_neg (hne _ (by omega) (by omega))]
  exact h j hj


/-! ## One iteration -/

theorem sv_rest {p q2 : Ptrs} {M0 : Mem} {P N Cn Ar I Pr O : BitVec 64}
    (hF : SvFix p q2 P N Cn Ar) (hIlt : I.toNat < Cn.toNat) (hON : O.toNat ≤ N.toNat) :
    Hoare σ X (SvMid p q2 M0 P N Cn Ar I Pr O) svRest
      (fun r t => r = none ∧ SvI p q2 M0 P N Cn Ar t) := by
  refine hoare_of_eq fun s hs ⟨hB, ⟨hiI, hprP, hoO⟩, hSI⟩ => ?_
  have hAC := hF.hAC
  have hC30 := hF.hC30
  have hPN := hF.hPN
  obtain ⟨hq, hw, hpP, hnN, hcC, haA, F, hfi⟩ := hB
  set a1 := Ar + BitVec.ofNat 64 (16 * I.toNat) with ha1
  have ha1n : a1.toNat = Ar.toNat + 16 * I.toNat := cellN hAC (by omega)
  have hev1 : Ar + I * BitVec.ofNat 64 16 = a1 := by
    apply BitVec.eq_of_toNat_eq; rw [blk_cell0 hIlt hAC, ha1n]
  have hA1 : ev s (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16]]) =
      some (.val (.word a1)) := by
    rw [ev_add2 (ev_lw haA) (ev_mul2 (ev_lw hiI) (ev_cw _ 16)), hev1]
  have hV1 : ev s (.op .add [lv (nm "p"), lv (nm "o")]) = some (.val (.word (P + O))) :=
    ev_add2 (ev_lw hpP) (ev_lw hoO)
  unfold svRest
  unfold svSt2
  refine hoare_seq_eq (hoare_store_eq hA1 hV1) ?_
  set t2 : State σ := { s with memory := upd s.memory a1 (.word (P + O)) } with ht2
  have hoO2 : t2.locals.lookup (nm "o") = some (.val (.word O)) := hoO
  refine hoare_seq_eq (hoare_assign_eq (s0 := t2) (x := nm "prev") (ev_lw hoO2)) ?_
  set t3 := setVarHOLFinite (nm "prev") (.val (.word O)) t2 with ht3
  have hiI3 : t3.locals.lookup (nm "i") = some (.val (.word I)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hiI
  refine hoare_assign_fin (ev_add2 (ev_lw hiI3) (ev_cw _ 1)) ⟨rfl, ?_⟩
  have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  refine ⟨⟨?_, fun a ha => ?_, ?_, ?_, ?_, ?_, F, ?_⟩, I + BitVec.ofNat 64 1, O,
    lk_set_self _ _ _, ?_, by omega, hON, ?_⟩
  · exact (ptrsOf_frame rfl).trans hq
  · change upd s.memory a1 (.word (P + O)) a ≠ M0 a at ha
    by_cases e1 : a = a1
    · subst e1; rw [ha1n]; exact hF.fresh _ (by omega) (by omega)
    · rw [upd_out e1] at ha
      exact hw a ha
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hpP
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hnN
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hcC
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact haA
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hfi
  · rw [lk_set_ne _ _ (by decide), lk_set_self]
  · unfold SvMem
    rw [hI1]
    refine ⟨fun _ => ?_, ?_⟩
    · show rd (upd s.memory a1 (.word (P + O))) _ = _
      rw [Nat.add_sub_cancel, rd_upd, if_pos rfl]
    · rw [Nat.add_sub_cancel]
      exact sIn_ptr (c := I.toNat) (c' := Cn.toNat) (x := P + O) hAC hIlt hSI

theorem sv_ite {p q2 : Ptrs} {M0 : Mem} {P N Cn Ar I Pr O : BitVec 64}
    (hF : SvFix p q2 P N Cn Ar) (hIlt : I.toNat < Cn.toNat) (hON : O.toNat ≤ N.toNat)
    (hPO : Pr.toNat ≤ O.toNat) :
    Hoare σ X (SvPre1 p q2 M0 P N Cn Ar I Pr O)
      (.ite (.cmp .less (cw 0) (lv (nm "i"))) svSt1 .skip)
      (fun r t => r = none ∧ SvMid p q2 M0 P N Cn Ar I Pr O t) := by
  refine hoare_of_eq fun s hs ⟨hB, ⟨hiI, hprP, hoO⟩, hmem⟩ => ?_
  have hAC := hF.hAC
  have hC30 := hF.hC30
  have hPN := hF.hPN
  have hcmp := ev_cmp (o := .less) (ev_cw s 0) (ev_lw hiI)
  obtain ⟨hq, hw, hpP, hnN, hcC, haA, F, hfi⟩ := hB
  have hB' : SvB p q2 M0 P N Cn Ar s := ⟨hq, hw, hpP, hnN, hcC, haA, F, hfi⟩
  cases hc : wordCmpHOL .less (BitVec.ofNat 64 0) I with
  | false =>
    have hI0 : I.toNat = 0 := by
      have := signed_ge (x := BitVec.ofNat 64 0) (y := I) (by decide) (by omega) hc
      exact Nat.le_zero.mp this
    refine hoare_ite ?_ (hoare_skip fun t _ ⟨ht, _⟩ => ?_)
    · intro t _ ⟨ht, w, hw0, hw1⟩ _
      subst ht
      rw [hcmp, hc] at hw0
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw0
      exact absurd (by simpa using hw0.symm) hw1
    · subst ht
      refine ⟨rfl, hB', ⟨hiI, hprP, hoO⟩, fun j hj => absurd hj (by omega)⟩
  | true =>
    have hI1 : 0 < I.toNat := by
      have := signed_lt (x := BitVec.ofNat 64 0) (y := I) (by decide) (by omega) hc
      simpa using this
    refine hoare_ite ?_ ?_
    swap
    · intro t _ ⟨ht, hw0⟩ _
      subst ht
      rw [hcmp, hc] at hw0
      simp at hw0
    set I' := I - BitVec.ofNat 64 1 with hI'
    have hI'n : I'.toNat = I.toNat - 1 := by
      rw [hI', BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
    set a2 := Ar + BitVec.ofNat 64 (16 * (I.toNat - 1) + 8) with ha2
    have ha2n : a2.toNat = Ar.toNat + (16 * (I.toNat - 1) + 8) := cellN hAC (by omega)
    have hev2 : Ar + (I' * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = a2 := by
      apply BitVec.eq_of_toNat_eq
      rw [blk_cell (c := 8) (by decide) (by omega) hAC, ha2n, hI'n]; omega
    have hA2 : ev s (.op .add [lv (nm "arr"), .panop .mul [.op .sub [lv (nm "i"), cw 1], cw 16],
        cw 8]) = some (.val (.word a2)) := by
      rw [ev_add3 (ev_lw haA) (ev_mul2 (ev_sub2 (ev_lw hiI) (ev_cw _ 1)) (ev_cw _ 16)) (ev_cw _ 8),
        hev2]
    have hV2 : ev s (.op .sub [lv (nm "o"), lv (nm "prev")]) = some (.val (.word (O - Pr))) :=
      ev_sub2 (ev_lw hoO) (ev_lw hprP)
    refine hoare_pre (hoare_post (hoare_store_eq hA2 hV2) ?_) fun t _ ⟨ht, _⟩ => ht
    rintro r t _ _ ⟨hr, rfl⟩
    refine ⟨hr, ?_, ⟨hiI, hprP, hoO⟩, ?_⟩
    · refine svb_mem hB' rfl rfl fun a ha => ?_
      change upd s.memory a2 (.word (O - Pr)) a ≠ s.memory a at ha
      by_cases e1 : a = a2
      · subst e1; rw [ha2n]; exact hF.fresh _ (by omega) (by omega)
      · exact absurd (upd_out e1) ha
    · obtain ⟨hm1, hm2⟩ := hmem
      have hm1' := hm1 hI1
      have hc2 : I.toNat = (I.toNat - 1) + 1 := by omega
      exact sIn_snoc (c := I.toNat - 1) (c' := I.toNat) hc2 (by omega) hPN hm2 hm1' hPO hON


theorem svi_res {p q2 : Ptrs} {M0 : Mem} {P N Cn Ar : BitVec 64} {t : State σ}
    (old : Option (ValueHOL 64)) (h : SvI p q2 M0 P N Cn Ar t) :
    SvI p q2 M0 P N Cn Ar { t with locals := t.locals.resVarEq (nm "o", old) } := by
  obtain ⟨⟨h0, h1, h2, h3, h4, h5, F, h6⟩, I, Pr, h7, h8, h9, h10, h11⟩ := h
  exact ⟨⟨h0, h1, by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h2,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h3,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h4,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h5, F,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h6⟩, I, Pr,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h7,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h8, h9, h10, h11⟩

theorem svH_body (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) {p q2 : Ptrs} {M0 : Mem}
    {P N Cn Ar : BitVec 64} (hF : SvFix p q2 P N Cn Ar) :
    Hoare σ X (fun t => SvI p q2 M0 P N Cn Ar t ∧ CondTrue t svCond) svLoopBody
      (fun r t => r = none ∧ SvI p q2 M0 P N Cn Ar t) := by
  have hC30 := hF.hC30
  refine hoare_of_eq fun s hs ⟨⟨hB, I, Pr, hiI, hprP, hIC, hPrN, hM⟩, hc⟩ => ?_
  obtain ⟨hq, hw, hpP, hnN, hcC, haA, F, hfi⟩ := hB
  have hIlt : I.toNat < Cn.toNat :=
    signed_lt (by omega) (by omega) (cmp_true (ev_lw hiI) (ev_lw hcC) hc)
  unfold svLoopBody
  refine hoare_dec fun s' _ hs' v hv _ => ?_
  subst s'
  obtain ⟨O, rfl, hO32⟩ := ev_le32 hv
  refine hoare_post (Q := fun r t => r = none ∧ SvI p q2 M0 P N Cn Ar t) ?_
    (fun r t _ _ h => ⟨h.1, svi_res _ h.2⟩)
  set s1 := setVarHOLFinite (nm "o") (.val (.word O)) s with hs1
  have hl1 : ∀ y, y ≠ nm "o" → s1.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  have hB1 : SvB p q2 M0 P N Cn Ar s1 := by
    refine ⟨(ptrsOf_frame rfl).trans hq, hw, ?_, ?_, ?_, ?_, F, ?_⟩ <;>
      rw [hl1 _ (by decide)] <;> assumption
  have hLk1 : SvLk I Pr O s1 :=
    ⟨by rw [hl1 _ (by decide)]; exact hiI, by rw [hl1 _ (by decide)]; exact hprP,
      lk_set_self _ _ _⟩
  refine hoare_seqFail hfr (hoare_of_eq fun t _ ⟨ht, hc2⟩ => ?_)
  subst ht
  obtain ⟨hON, hPO⟩ := svC2_false (by rw [hl1 _ (by decide)]; exact hfi)
    (by rw [hl1 _ (by decide)]; exact hnN) (lk_set_self _ _ _)
    (by rw [hl1 _ (by decide)]; exact hprP) hc2
  exact hoare_seq (R := fun r t => r = none ∧ SvMid p q2 M0 P N Cn Ar I Pr O t)
    (hoare_pre (sv_ite hF hIlt hON hPO) fun t _ ht => by subst ht; exact ⟨hB1, hLk1, hM⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (sv_rest hF hIlt hON) fun t _ h => h.2)

theorem svH_loop (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) {p q2 : Ptrs} {M0 : Mem}
    {P N Cn Ar : BitVec 64} (hF : SvFix p q2 P N Cn Ar) :
    Hoare σ X (SvI p q2 M0 P N Cn Ar) (.while svCond svLoopBody)
      (fun r t => r = none ∧ SvI p q2 M0 P N Cn Ar t ∧ ∃ I : BitVec 64,
        t.locals.lookup (nm "i") = some (.val (.word I)) ∧ Cn.toNat ≤ I.toNat) := by
  have hC30 := hF.hC30
  refine hoare_while (fun _ h => h) (hoare_post (svH_body hfr hF)
    fun r t _ _ ⟨hr, hI⟩ => ⟨fun _ => hI, fun h => by subst hr; exact absurd h (by simp),
      fun h => by subst hr; exact absurd h (by simp),
      fun v h => by subst hr; exact absurd h (by simp)⟩) ?_
  intro t _ hI hc
  obtain ⟨⟨hB, I, Pr, hiI, hprP, hIC, hPrN, hM⟩⟩ := (⟨hI⟩ : Nonempty _)
  obtain ⟨-, -, -, -, hcC, -⟩ := hB
  exact ⟨rfl, hI, I, hiI, signed_ge (by omega) (by omega) (cmp_val_false hc (ev_lw hiI) (ev_lw hcC))⟩


/-! ## The tail -/

theorem svH_tail {p q2 : Ptrs} {M0 : Mem} {P N Cn Ar Lm : BitVec 64}
    (hF : SvFix p q2 P N Cn Ar) (hLm : Cn.toNat ≤ Lm.toNat) :
    Hoare σ X (fun t => SvI p q2 M0 P N Cn Ar t ∧ ∃ I : BitVec 64,
        t.locals.lookup (nm "i") = some (.val (.word I)) ∧ Cn.toNat ≤ I.toNat) svTail
      (FPost p M0 (SvQ [.val (.word P), .val (.word N), .val (.word Lm)] p)) := by
  have hAC := hF.hAC
  have hC30 := hF.hC30
  have hC1 := hF.hC1
  have hPN := hF.hPN
  refine hoare_of_eq fun s hs ⟨⟨hB, I, Pr, hiI, hprP, hIC, hPrN, hM⟩, I', hiI', hCI⟩ => ?_
  have hII : I.toNat = Cn.toNat := by
    rw [hiI] at hiI'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hiI'
    subst hiI'
    omega
  obtain ⟨hq, hw, hpP, hnN, hcC, haA, F, hfi⟩ := hB
  set a2 := Ar + BitVec.ofNat 64 (16 * (Cn.toNat - 1) + 8) with ha2
  have ha2n : a2.toNat = Ar.toNat + (16 * (Cn.toNat - 1) + 8) := cellN hAC (by omega)
  have hC' : (Cn - BitVec.ofNat 64 1).toNat = Cn.toNat - 1 := by
    rw [BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
  have hev2 : Ar + ((Cn - BitVec.ofNat 64 1) * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = a2 := by
    apply BitVec.eq_of_toNat_eq
    rw [blk_cell (c := 8) (by decide) (by omega) hAC, ha2n, hC']; omega
  have hA2 : ev s (.op .add [lv (nm "arr"), .panop .mul [.op .sub [lv (nm "count"), cw 1], cw 16],
      cw 8]) = some (.val (.word a2)) := by
    rw [ev_add3 (ev_lw haA) (ev_mul2 (ev_sub2 (ev_lw hcC) (ev_cw _ 1)) (ev_cw _ 16)) (ev_cw _ 8),
      hev2]
  have hV2 : ev s (.op .sub [lv (nm "len"), lv (nm "prev")]) = some (.val (.word (N - Pr))) :=
    ev_sub2 (ev_lw hnN) (ev_lw hprP)
  unfold svTail
  refine hoare_seq_eq (hoare_store_eq hA2 hV2) ?_
  set t2 : State σ := { s with memory := upd s.memory a2 (.word (N - Pr)) } with ht2
  have haA2 : t2.locals.lookup (nm "arr") = some (.val (.word Ar)) := haA
  have hcC2 : t2.locals.lookup (nm "count") = some (.val (.word Cn)) := hcC
  refine hoare_return fun t _ ht w hw => ?_
  subst ht
  rw [ev_rstruct (evs_cons (ev_lw haA2) (evs_cons (ev_lw hcC2) evs_nil))] at hw
  cases hw
  have hq2 : ptrsOf (emptyLocalsHOLFinite t2) = some q2 := (ptrsOf_frame rfl).trans hq
  have hw2 : ∀ a : BitVec 64, (emptyLocalsHOLFinite t2).memory a ≠ M0 a → ¬ p.Allocated a.toNat := by
    intro a ha
    change upd s.memory a2 (.word (N - Pr)) a ≠ M0 a at ha
    by_cases e1 : a = a2
    · subst e1; rw [ha2n]; exact hF.fresh _ (by omega) (by omega)
    · rw [upd_out e1] at ha
      exact hw a ha
  refine fpost_of_ff ⟨q2, hq2, hF.q2o, hF.mono, hw2⟩ fun p' hp' => ?_
  rw [hq2] at hp'
  cases hp'
  intro arr cnt hv
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hv
  obtain ⟨rfl, rfl⟩ := hv
  refine ⟨fun _ => hF.start, hF.arr2, hC30, hF.al, fun P' N' L' hvs => ?_⟩
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  refine ⟨hLm, hF.h4N, ?_⟩
  obtain ⟨hm1, hm2⟩ := hM
  rw [hII] at hm1 hm2
  exact sIn_snoc (c := Cn.toNat - 1) (c' := Cn.toNat) (by omega) hAC hPN hm2 (hm1 (by omega))
    (by omega) le_rfl


/-! ## The allocation -/

theorem svH_alloc (hC : X.code.lookup = guestCode)
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) {p : Ptrs} {M0 : Mem}
    {P N Lm F Cn : BitVec 64} (hPN : P.toNat + N.toNat ≤ heapEnd) (hF4 : 4 ≤ F.toNat)
    (hFN : F.toNat ≤ N.toNat) (hF32 : F.toNat < 2 ^ 32) (hCn : Cn.toNat = F.toNat / 4)
    (hCL : Cn.toNat ≤ Lm.toNat) {sc : State σ} (hs : FF p M0 sc)
    (hp : sc.locals.lookup (nm "p") = some (.val (.word P)))
    (hn : sc.locals.lookup (nm "len") = some (.val (.word N)))
    (hcl : sc.locals.lookup (nm "count") = some (.val (.word Cn)))
    (hf : sc.locals.lookup (nm "first") = some (.val (.word F))) :
    Hoare σ X (fun t => t = sc) svAlloc
      (FPost p M0 (SvQ [.val (.word P), .val (.word N), .val (.word Lm)] p)) := by
  have hC1 : 1 ≤ Cn.toNat := by omega
  have hC30 : Cn.toNat < 2 ^ 30 := by omega
  have h16 : (Cn * BitVec.ofNat 64 16).toNat = 16 * Cn.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 16) (by decide),
      Nat.mod_eq_of_lt (by omega)]
    omega
  obtain ⟨q1, hq1, ho1, hm1, hw1⟩ := hs
  unfold svAlloc
  refine hoare_decCallL (MemSafe.allocSpec_alloc hC) fpost_locals
    fun s _ hs avs havs callee' v st2 hR _ _ => ?_
  subst s
  rw [evs_cons (ev_mul2 (ev_lw hcl) (ev_cw _ 16)) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨hm2, -, q2, hq2, ho2, hmono2, hv2⟩ := hR (by simp [Good]) _ q1 rfl hq1 ho1
  obtain ⟨Ar, rfl, hAl, ⟨hAr1, hAr2⟩, hfree⟩ := hv2 _ rfl
  rw [h16] at hAr2 hfree
  have hst : p.hp ≤ Ar.toNat := by
    have := alloc_start hAr1 (by omega) hfree
    have := hm1.1
    omega
  have hF : SvFix p q2 P N Cn Ar :=
    ⟨hPN, hC30, hC1, hAl, by omega, ho2, mono_trans' hm1 hmono2, hst, hAr2,
      fun a h1 h2 => not_alloc_of_mono hm1 (hfree a h1 h2)⟩
  set t1 := setVarHOLFinite (nm "arr") (.val (.word Ar)) { st2 with locals := sc.locals } with ht1
  have hl1 : ∀ y, y ≠ nm "arr" → t1.locals.lookup y = sc.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  refine hoare_decL fpost_locals fun s _ hs vi hvi _ => ?_
  subst hs
  rw [ev_cw] at hvi; cases hvi
  refine hoare_decL fpost_locals fun s _ hs vo hvo _ => ?_
  subst hs
  rw [ev_lw (by rw [lk_set_ne _ _ (by decide), hl1 _ (by decide)]; exact hf)] at hvo
  cases hvo
  refine hoare_seq (R := fun r t => r = none ∧ SvI p q2 M0 P N Cn Ar t ∧ ∃ I : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ Cn.toNat ≤ I.toNat) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (svH_tail hF hCL) fun t _ h => h.2)
  refine hoare_pre (hoare_post (svH_loop hfr hF) fun r t _ _ h => h) fun t _ ht => ?_
  subst ht
  have hl3 : ∀ y, y ≠ nm "prev" → y ≠ nm "i" → y ≠ nm "arr" →
      (setVarHOLFinite (nm "prev") (.val (.word F))
        (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) t1)).locals.lookup y =
        sc.locals.lookup y := fun y a b c => by
    rw [lk_set_ne _ _ (Ne.symm a), lk_set_ne _ _ (Ne.symm b), hl1 _ c]
  refine ⟨⟨(ptrsOf_frame rfl).trans hq2, fun a ha => hw1 a (fun e => ha ?_), ?_, ?_, ?_, ?_, F, ?_⟩,
    BitVec.ofNat 64 0, F, ?_, lk_set_self _ _ _, by simp, hFN.trans le_rfl, ?_⟩
  · change st2.memory a = _
    rw [hm2]; exact e
  · rw [hl3 _ (by decide) (by decide) (by decide)]; exact hp
  · rw [hl3 _ (by decide) (by decide) (by decide)]; exact hn
  · rw [hl3 _ (by decide) (by decide) (by decide)]; exact hcl
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
  · rw [hl3 _ (by decide) (by decide) (by decide)]; exact hf
  · rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
  · exact ⟨fun h => absurd h (by simp), fun j hj => absurd hj (by simp)⟩


/-! ## `count` and the function -/

theorem svH_count (hC : X.code.lookup = guestCode)
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) {p : Ptrs} {M0 : Mem}
    {P N Lm F : BitVec 64} (hPN : P.toNat + N.toNat ≤ heapEnd) (hF4 : 4 ≤ F.toNat)
    (hFN : F.toNat ≤ N.toNat) (hF32 : F.toNat < 2 ^ 32) {s : State σ} (hs : FF p M0 s)
    (hp : s.locals.lookup (nm "p") = some (.val (.word P)))
    (hn : s.locals.lookup (nm "len") = some (.val (.word N)))
    (hl : s.locals.lookup (nm "lim") = some (.val (.word Lm)))
    (hf : s.locals.lookup (nm "first") = some (.val (.word F))) :
    Hoare σ X (fun t => t = s) svCount
      (FPost p M0 (SvQ [.val (.word P), .val (.word N), .val (.word Lm)] p)) := by
  have hCn := lsr2_toNat F
  unfold svCount
  refine hoare_decL fpost_locals fun s' _ hs' v hv _ => ?_
  subst s'
  rw [ev_shift (ev_lw hf) (ev_cw _ 2)] at hv
  have h2 : (BitVec.ofNat 64 2).toNat = 2 := rfl
  rw [h2] at hv
  simp only [Flapjack.wordShiftHOL] at hv
  rw [if_neg (by omega)] at hv
  cases hv
  set sc := setVarHOLFinite (nm "count") (.val (.word (F >>> (2 : Nat)))) s with hsc
  have hlc : ∀ y, y ≠ nm "count" → sc.locals.lookup y = s.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  refine hoare_seqFail hfr (hoare_of_eq fun t _ ⟨ht, hc⟩ => ?_)
  subst ht
  have hCL := cond_ge (ev_lw (by rw [hlc _ (by decide)]; exact hl)) (ev_lw (lk_set_self _ _ _)) hc
  exact svH_alloc hC hfr hPN hF4 hFN hF32 hCn hCL hs (by rw [hlc _ (by decide)]; exact hp)
    (by rw [hlc _ (by decide)]; exact hn) (lk_set_self _ _ _) (by rw [hlc _ (by decide)]; exact hf)

/-- **`ssz_split_var_list`, located.** -/
theorem freshFoot_ssz_split_var_list (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "ssz_split_var_list") SvPre SvQ := by
  have hfr := funRet_ssz_fail (σ := σ) hC
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, C0, rfl, hsA, hsB, hsC, hA, hB, hC'⟩ :=
    lookupCode_three code_ssz_split_var_list (by decide) (by decide) (by decide) hl
  obtain ⟨P, N, Lm, hvs, hPN⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlN : s0.locals.lookup (nm "len") = some (.val (.word N)) := by rw [hloc]; exact hB
  have hlL : s0.locals.lookup (nm "lim") = some (.val (.word Lm)) := by rw [hloc]; exact hC'
  unfold svBody
  refine hoare_retGuard ?_ ?_
  · intro t _ ht v hv
    subst ht
    rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil))] at hv
    cases hv
    refine fpost_of_ff (ff_empty (ff_refl hp hord)) fun p' hp' => ?_
    intro arr cnt hv
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      and_true] at hv
    obtain ⟨rfl, rfl⟩ := hv
    refine ⟨fun h => absurd h (by simp), by simp, by simp, by simp, fun P' N' L' hvs => ?_⟩
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl, rfl⟩ := hvs
    exact ⟨by simp, by simp, fun j hj => absurd hj (by simp)⟩
  refine hoare_of_eq fun t _ ⟨ht, _⟩ => ?_
  subst ht
  refine hoare_seqFail hfr (hoare_of_eq fun t _ ⟨ht, hc4⟩ => ?_)
  subst ht
  refine hoare_decL fpost_locals fun s _ hs v hv _ => ?_
  subst s
  obtain ⟨F, rfl, hF32⟩ := ev_le32 hv
  set s1 := setVarHOLFinite (nm "first") (.val (.word F)) t with hs1
  have hl1 : ∀ y, y ≠ nm "first" → s1.locals.lookup y = t.locals.lookup y :=
    fun y hy => lk_set_ne _ _ (Ne.symm hy)
  refine hoare_seqFail hfr (hoare_of_eq fun t' _ ⟨ht, hc⟩ => ?_)
  subst ht
  obtain ⟨hF4, hFN⟩ := svC1_false' (lk_set_self _ _ _) (by rw [hl1 _ (by decide)]; exact hlN) hc
  exact svH_count hC hfr hPN hF4 hFN hF32 (ff_refl hp hord) (by rw [hl1 _ (by decide)]; exact hpP)
    (by rw [hl1 _ (by decide)]; exact hlN) (by rw [hl1 _ (by decide)]; exact hlL)
    (lk_set_self _ _ _)

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.freshFoot_ssz_split_var_list
