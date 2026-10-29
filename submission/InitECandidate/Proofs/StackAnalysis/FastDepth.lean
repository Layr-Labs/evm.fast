import Flapjack.Compiler.Backend.WordDepth.AnalysisInput

namespace InitECandidate.Proofs.StackAnalysis.FastDepth
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.WordDepth
set_option maxRecDepth 10000
set_option maxHeartbeats 0

private theorem sptSize_sptMkBN_le {α : Type} (a r : Spt α) :
    sptSize (sptMkBN a r) ≤ sptSize a + sptSize r := by
  cases a <;> cases r <;> simp [sptMkBN, sptSize]

/-- `sptSize` of a `mk_BS`-collapsed triple is bounded by the sum of the two
    children sizes plus one.  Untagged Flapjack infrastructure used only for
    the `callGraph` termination measure. -/
private theorem sptSize_sptMkBS_le {α : Type} (a r : Spt α) (v : α) :
    sptSize (sptMkBS a v r) ≤ sptSize a + sptSize r + 1 := by
  cases a <;> cases r <;> simp [sptMkBS, sptSize]

/-- Deleting a present key strictly decreases the spt size.  This untagged
    Flapjack termination lemma proves the strict inequality needed by the
    `callGraph` measure on the local tree implementation; it is not presented
    as a port of a HOL declaration. -/
private theorem sptSize_sptDelete_lt {α : Type} (t : Spt α) (k : Nat) (v : α)
    (h : sptLookup k t = some v) : sptSize (sptDelete k t) < sptSize t := by
  induction t generalizing k v with
  | ln => simp at h
  | ls x =>
      by_cases hk : k = 0
      · subst hk; simp [sptDelete, sptSize]
      · simp [sptLookup, hk] at h
  | bn l r ihl ihr =>
      by_cases hk : k = 0
      · simp [sptLookup, hk] at h
      · simp only [sptLookup, hk, if_false] at h
        by_cases he : k % 2 = 0
        · simp only [he, if_true] at h
          rw [sptDelete]
          simp only [hk, if_false, he, if_true]
          calc
            sptSize (sptMkBN (sptDelete ((k - 1) / 2) l) r)
                ≤ sptSize (sptDelete ((k - 1) / 2) l) + sptSize r :=
                  sptSize_sptMkBN_le _ _
            _ < sptSize l + sptSize r := by
                  have := ihl ((k - 1) / 2) v h; omega
        · simp only [he, if_false] at h
          rw [sptDelete]
          simp only [hk, if_false, he, if_false]
          calc
            sptSize (sptMkBN l (sptDelete ((k - 1) / 2) r))
                ≤ sptSize l + sptSize (sptDelete ((k - 1) / 2) r) :=
                  sptSize_sptMkBN_le _ _
            _ < sptSize l + sptSize r := by
                  have := ihr ((k - 1) / 2) v h; omega
  | bs l x r ihl ihr =>
      by_cases hk : k = 0
      · subst hk
        simp only [sptLookup, if_true] at h
        rw [sptDelete]
        simp only [if_true]
        simp [sptSize]
      · simp only [sptLookup, hk, if_false] at h
        by_cases he : k % 2 = 0
        · simp only [he, if_true] at h
          rw [sptDelete]
          simp only [hk, if_false, he, if_true]
          calc
            sptSize (sptMkBS (sptDelete ((k - 1) / 2) l) x r)
                ≤ sptSize (sptDelete ((k - 1) / 2) l) + sptSize r + 1 :=
                  sptSize_sptMkBS_le _ _ _
            _ < sptSize l + sptSize r + 1 := by
                  have := ihl ((k - 1) / 2) v h; omega
        · simp only [he, if_false] at h
          rw [sptDelete]
          simp only [hk, if_false, he, if_false]
          calc
            sptSize (sptMkBS l x (sptDelete ((k - 1) / 2) r))
                ≤ sptSize l + sptSize (sptDelete ((k - 1) / 2) r) + 1 :=
                  sptSize_sptMkBS_le _ _ _
            _ < sptSize l + sptSize r + 1 := by
                  have := ihr ((k - 1) / 2) v h; omega


private def frameFast (sizes : Spt Nat) (n : Nat) (depth : Option Nat) : Option Nat :=
  optionMap₂ (· + ·) (sptLookup n sizes) depth

/-- Compute the original call graph's depth directly, without constructing and
comparing intermediate CallTree values. No input validity premise is required. -/
def callGraphDepthFast {width : Nat} [NeZero width] (sizes : Spt Nat) :
    Spt (Nat × WordLangProgHOL (BitVec width)) → Nat → List Nat → Spt PUnit → Nat →
      WordLangProgHOL (BitVec width) → Option Nat
  | funs, n, ns, seen, total, .seq p1 p2 =>
      optionMap₂ max (callGraphDepthFast sizes funs n ns seen total p1)
        (callGraphDepthFast sizes funs n ns seen total p2)
  | funs, n, ns, seen, total, .ite _ _ _ p1 p2 =>
      optionMap₂ max (callGraphDepthFast sizes funs n ns seen total p1)
        (callGraphDepthFast sizes funs n ns seen total p2)
  | funs, n, ns, seen, total, .call ret dest _args handler =>
      match dest with
      | none => none
      | some d =>
          if (sptLookup d seen).isSome ∧ ret = none then some 0
          else
            match _lookup : sptLookup d funs with
            | none => none
            | some (_, body) =>
                match ret with
                | none =>
                    if ns.length < total then
                      optionMap₂ max (frameFast sizes d (some 0))
                        (callGraphDepthFast sizes funs d (d :: ns) (sptInsert d PUnit.unit seen) total body)
                    else some 0
                | some (_, _, retProg, _, _) =>
                    let newFuns := sptDelete d funs
                    match handler with
                    | none =>
                        optionMap₂ max (frameFast sizes n (frameFast sizes d (some 0)))
                          (optionMap₂ max
                            (frameFast sizes n (callGraphDepthFast sizes newFuns d [d] (sptInsert d PUnit.unit .ln) total body))
                            (callGraphDepthFast sizes funs n ns seen total retProg))
                    | some (_, p, _, _) =>
                        optionMap₂ max
                          (frameFast sizes n ((frameFast sizes d (some 0)).map (fun depth => 3 + depth)))
                          (optionMap₂ max
                            (frameFast sizes n ((callGraphDepthFast sizes newFuns d [d] (sptInsert d PUnit.unit .ln) total body).map
                              (fun depth => 3 + depth)))
                            (optionMap₂ max (callGraphDepthFast sizes funs n ns seen total p)
                              (callGraphDepthFast sizes funs n ns seen total retProg)))
  | funs, n, ns, seen, total, .mustTerminate p => callGraphDepthFast sizes funs n ns seen total p
  | _, n, _, _, _, .alloc _ _ => frameFast sizes n (some 0)
  | _, _, _, _, _, .install _ _ _ _ _ => none
  | funs, n, ns, seen, total, .loop _ body _ => callGraphDepthFast sizes funs n ns seen total body
  | _, _, _, _, _, _ => some 0
termination_by funs _ ns _ total p => (sptSize funs, total - ns.length, sizeOf p)
decreasing_by
  all_goals
    first
      | apply Prod.Lex.left
        exact sptSize_sptDelete_lt _ _ _ _lookup
      | apply Prod.Lex.right
        apply Prod.Lex.left
        simp only [List.length_cons]; omega
      | apply Prod.Lex.right
        apply Prod.Lex.right
        decreasing_trivial

private def seenOfList : List Nat → Spt PUnit
  | [] => .ln
  | n :: ns => sptInsert n PUnit.unit (seenOfList ns)

private theorem lookup_insert_seen (seen : Spt PUnit) (d i : Nat) :
    (sptLookup i (sptInsert d PUnit.unit seen)).isSome =
      (decide (i = d) || (sptLookup i seen).isSome) := by
  by_cases h : i = d
  · subst i
    simp [sptLookup_sptInsert_same]
  · rw [sptLookup_sptInsert_ne d i PUnit.unit seen h]
    simp [h]

private theorem seenOfList_correct (ns : List Nat) (i : Nat) :
    (sptLookup i (seenOfList ns)).isSome = decide (i ∈ ns) := by
  induction ns with
  | nil => simp [seenOfList]
  | cons n ns ih =>
      simp only [seenOfList, lookup_insert_seen, ih]
      by_cases hn : i = n <;> by_cases hm : i ∈ ns <;> simp [hn, hm]

/-- Replacing the visited-list scan by a tree lookup preserves the exact depth. -/
theorem callGraphDepthFast_eq {width : Nat} [NeZero width] (sizes : Spt Nat)
    (funs : Spt (Nat × WordLangProgHOL (BitVec width))) (n : Nat)
    (ns : List Nat) (seen : Spt PUnit) (total : Nat)
    (program : WordLangProgHOL (BitVec width))
    (agrees : ∀ i, (sptLookup i seen).isSome = decide (i ∈ ns)) :
    callGraphDepthFast sizes funs n ns seen total program =
      WordDepth.Executable.callGraphDepth sizes funs n ns total program := by
  fun_induction callGraphDepthFast sizes funs n ns seen total program <;>
    simp_all [WordDepth.Executable.callGraphDepth, frameFast]
  case case5 funs n ns seen total ret args handler d guard lookup =>
    have no : ¬(d ∈ ns ∧ ret = none) := by
      intro both
      exact guard both.1 both.2
    simp only [no, if_false]
    split <;> simp_all
  case case6 funs n ns seen total args handler d arity body lookup enough guard ih =>
    have child : ∀ i, (sptLookup i (sptInsert d PUnit.unit seen)).isSome =
        (decide (i = d) || decide (i ∈ ns)) := by
      intro i
      rw [lookup_insert_seen, agrees]
    rw [ih child]
    split <;> simp_all
    rfl
  case case7 funs n ns seen total args handler d arity body lookup enough guard =>
    have budget : ¬ns.length < total := by omega
    simp only [budget, if_false]
    split <;> simp_all
  case case8 inst funs n ns seen total args d arity body lookup rvalues cutsets retProg loc retloc newFuns guard ihchild =>
    have child : ∀ i, (sptLookup i (sptInsert d PUnit.unit .ln)).isSome =
        decide (i = d) := by
      intro i
      simp [lookup_insert_seen, sptLookup]
    rw [guard child]
    split <;> simp_all
    rfl
  case case9 inst funs n ns seen total args d arity body lookup rvalues cutsets retProg loc retloc newFuns exception handler hloc hend guard ihchild ihhandler =>
    have child : ∀ i, (sptLookup i (sptInsert d PUnit.unit .ln)).isSome =
        decide (i = d) := by
      intro i
      simp [lookup_insert_seen, sptLookup]
    rw [guard child]
    split <;> simp_all
    rfl
  case case11 => rfl

/-- Faster stack-depth computation for the unchanged compiler input. -/
def fullCallGraphDepthFast {width : Nat} [NeZero width] (sizes : Spt Nat) (n : Nat)
    (funs : Spt (Nat × WordLangProgHOL (BitVec width))) : Option Nat :=
  let slim := WordDepth.Executable.slimCode funs
  match sptLookup n slim with
  | none => none
  | some (_, program) =>
      optionMap₂ max (frameFast sizes n (some 0))
        (callGraphDepthFast sizes slim n [n] (seenOfList [n]) (sptSize slim) program)

theorem fullCallGraphDepthFast_eq {width : Nat} [NeZero width] (sizes : Spt Nat) (n : Nat)
    (funs : Spt (Nat × WordLangProgHOL (BitVec width))) :
    fullCallGraphDepthFast sizes n funs =
      WordDepth.Executable.fullCallGraphDepthExecutable sizes n funs := by
  unfold fullCallGraphDepthFast WordDepth.Executable.fullCallGraphDepthExecutable
    WordDepth.Executable.fullCallGraphDepth
  dsimp only
  split
  · simp_all
  · rw [callGraphDepthFast_eq sizes _ _ _ _ _ _ (seenOfList_correct [n])]
    simp_all [frameFast]
    rfl

#print axioms callGraphDepthFast_eq
#print axioms fullCallGraphDepthFast_eq
end InitECandidate.Proofs.StackAnalysis.FastDepth
