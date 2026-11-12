import InitECandidate.Solver.MemSafe.Rec.DecPayC
import InitECandidate.Solver.MemSafe.Rec.Count

set_option autoImplicit false

/-!
# `decode_bytes_list`, located

`freshFoot_decode_bytes_list : FreshFoot … DblPre DblQ`: for a buffer `[P, P + N)` below `heapEnd`, a run that
returns `<arr, cnt>` writes only cells unallocated at entry, and its result is `ssz_split_var_list`'s
(`SvQ`): a fresh array `[arr, arr + 16 cnt)` above the entry heap pointer (when nonempty), every slice inside
`[P, P + N)`. The length loop after the split only reads.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (SIn FreshFoot)
open InitECandidate.Solver.Spec.Mpt.Leaves (FF FPost ff_refl ff_call ff_keep ff_empty fpost_of_ff fpost_locals
  freshFoot_of hoare_decL hoare_decCallL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def dblCond : ExpHOL 64 := .cmp .less (lv (nm "i")) (.rfield 1 (lv (nm "r")))

def dblLoop : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv (nm "maxb")) (.load .one (.op .add [.rfield 0 (lv (nm "r")),
        .panop .mul [lv (nm "i"), cw 16], cw 8])))
      (callD (nm "ssz_fail") [cw 70]) .skip)
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))

def dblBody : ProgHOL 64 :=
  .decCall (nm "r") (.comb [.one, .one]) (nm "ssz_split_var_list") [lv (nm "p"), lv (nm "len"), lv (nm "lim")]
    (.dec (nm "i") .one (cw 0) (.seq (.while dblCond dblLoop) (.return (lv (nm "r")))))

def dblPs : List (MlS × ShapeHOL) :=
  [(nm "p", .one), (nm "len", .one), (nm "lim", .one), (nm "maxb", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_bytes_list : fnEntry Guest.Software.guestFn_decode_bytes_list =
    (nm "decode_bytes_list", dblPs, dblBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_bytes_list :
    guestCode (nm "decode_bytes_list") = some (dblPs, dblBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 206) (by decide)) ⟨_, rfl⟩
    entry_decode_bytes_list

/-- The located input. -/
def DblPre (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ P N L M : BitVec 64, vs = [.val (.word P), .val (.word N), .val (.word L), .val (.word M)] ∧
    P.toNat + N.toNat ≤ heapEnd

/-- The located result. -/
def DblQ (vs : List (ValueHOL 64)) (p p' : Ptrs) (M : Mem) (v : ValueHOL 64) : Prop :=
  ∀ arr cnt : BitVec 64, v = .rStruct [.val (.word arr), .val (.word cnt)] →
    (0 < cnt.toNat → p.hp ≤ arr.toNat) ∧ arr.toNat + 16 * cnt.toNat ≤ p'.hp ∧
      cnt.toNat < 2 ^ 30 ∧ arr.toNat % 8 = 0 ∧ ∀ P N L Mx : BitVec 64,
        vs = [.val (.word P), .val (.word N), .val (.word L), .val (.word Mx)] →
          SIn M arr cnt.toNat P.toNat (P.toNat + N.toNat)

/-- The loop keeps memory, globals and `r`. -/
def DblI (Mm : Mem) (Gg : LocalsH) (R : ValueHOL 64) (t : State σ) : Prop :=
  t.memory = Mm ∧ t.globals = Gg ∧ t.locals.lookup (nm "r") = some R

theorem dbl_body {Mm : Mem} {Gg : LocalsH} {R : ValueHOL 64}
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) :
    Hoare σ X (fun t => DblI Mm Gg R t ∧ CondTrue t dblCond) dblLoop
      (fun r t => r = none ∧ DblI Mm Gg R t) := by
  unfold dblLoop
  refine hoare_seq (R := fun r t => r = none ∧ DblI Mm Gg R t) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · exact hoare_seqFail_of hfr
    · exact hoare_skip fun t _ ⟨⟨h, _⟩, _⟩ => ⟨rfl, h⟩
  · refine hoare_assign fun s _ ⟨_, hm, hg, hr⟩ v _ _ => ⟨rfl, hm, hg, ?_⟩
    rw [lk_set_ne _ _ (by decide)]; exact hr

theorem dbl_loop {Mm : Mem} {Gg : LocalsH} {R : ValueHOL 64}
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) :
    Hoare σ X (DblI Mm Gg R) (.while dblCond dblLoop) (fun r t => r = none ∧ DblI Mm Gg R t) :=
  hoare_while (fun _ h => h) (hoare_post (dbl_body hfr)
    fun r t _ _ ⟨hr, hI⟩ => ⟨fun _ => hI, fun h => by subst hr; exact absurd h (by simp),
      fun h => by subst hr; exact absurd h (by simp),
      fun v h => by subst hr; exact absurd h (by simp)⟩)
    (fun s _ hI _ => ⟨rfl, hI⟩)

/-- **`decode_bytes_list`, located.** -/
theorem freshFoot_decode_bytes_list (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "decode_bytes_list") DblPre DblQ := by
  have hfr := funRet_ssz_fail (σ := σ) hC
  have hLoc := freshFoot_ssz_split_var_list (σ := σ) hC
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp ho hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, C0, D0, rfl, hsA, hsB, hsC, hsD, hA, hB, hC', hD⟩ :=
    MemSafe.Bn.lookupCode_four code_decode_bytes_list (by decide) hl
  obtain ⟨P, N, Lm, Mx, hvs, hPN⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlN : s0.locals.lookup (nm "len") = some (.val (.word N)) := by rw [hloc]; exact hB
  have hlL : s0.locals.lookup (nm "lim") = some (.val (.word Lm)) := by rw [hloc]; exact hC'
  unfold dblBody
  refine hoare_decCallL hLoc (fun r t L h => fpost_locals r t L h)
    fun s _ hs avs havs callee v st hR _ hsh => ?_
  subst hs
  rw [evs_cons (ev_lw hpP) (evs_cons (ev_lw hlN) (evs_cons (ev_lw hlL) evs_nil))] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨hff, q, q', hq, hq', -, hQ⟩ := ff_call (ff_refl hp ho) hR ⟨P, N, Lm, rfl, hPN⟩
  have hqp : q = p := Option.some.inj (hq.symm.trans hp)
  subst hqp
  obtain ⟨arr, cnt, rfl⟩ := rstruct_of_shape hsh
  obtain ⟨h1, h2, h3, h4, h5⟩ := hQ arr cnt rfl
  obtain ⟨-, -, hSI⟩ := h5 P N Lm rfl
  refine hoare_decL (fun r t L h => fpost_locals r t L h) fun s _ hs v hv _ => ?_
  subst hs
  rw [ev_cw] at hv
  cases hv
  refine hoare_seq (R := fun r t => r = none ∧
      DblI st.memory st.globals (.rStruct [.val (.word arr), .val (.word cnt)]) t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (dbl_loop hfr) ?_
    intro t _ ht
    subst ht
    refine ⟨rfl, rfl, ?_⟩
    rw [lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  refine hoare_return fun t _ ⟨_, hm, hg, hr⟩ v hv => ?_
  rw [ev_lv, hr] at hv
  cases hv
  have hpt : ptrsOf t = ptrsOf st := Spec.Mpt.ptrsOf_frame hg
  refine fpost_of_ff (ff_empty (ff_keep hff hm hpt)) fun p' hp' => ?_
  have hpq : p' = q' := Option.some.inj (hp'.symm.trans (hpt.trans hq'))
  subst hpq
  intro arr' cnt' hv'
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hv'
  obtain ⟨rfl, rfl⟩ := hv'
  refine ⟨h1, h2, h3, h4, fun P' N' L' M' hvs => ?_⟩
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  show SIn t.memory arr cnt.toNat P.toNat (P.toNat + N.toNat)
  rw [hm]
  exact hSI

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.freshFoot_decode_bytes_list
