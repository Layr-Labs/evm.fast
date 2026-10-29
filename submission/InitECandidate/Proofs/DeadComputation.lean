import Flapjack.Compiler.Backend.WordAlloc.RemoveDead
import Lean
namespace Flapjack.WordAlloc

/-- Inspect only the constructor, without transporting a large program through a matcher. -/
def isSkip {α : Type} : WordLangProgHOL α → Bool
  | .skip => true
  | _ => false

def joinSeq {α : Type} (p q : WordLangProgHOL α) : WordLangProgHOL α :=
  if isSkip p then q else if isSkip q then p else .seq p q

theorem joinSeq_eq {α : Type} (p q : WordLangProgHOL α) :
    joinSeq p q = (match p, q with | .skip, _ => q | _, .skip => p | _, _ => .seq p q) := by
  cases p <;> cases q <;> rfl

def removeDeadStructural {width : Nat} [NeZero width] :
    (program : WordLangProgHOL (BitVec width)) → NumSet → List WordStoreHOL → List (NumSet × NumSet) →
      WordLangProgHOL (BitVec width) × NumSet × List WordStoreHOL
  | .move pri ls, live, nlive, _ =>
    let ls := ls.filter fun p => sptLookup p.1 live = some ()
    if ls = [] then (.skip, live, nlive)
    else
      let killed := (ls.map Prod.fst).foldr sptDelete live
      (.move pri ls, numsetListInsert (ls.map Prod.snd) killed, nlive)
  | .inst i, live, nlive, _ =>
    if removeDeadInst i live then (.skip, live, nlive)
    else (.inst i, getLiveInst i live, nlive)
  | .get num store, live, nlive, _ =>
    if sptLookup num live = none then (.skip, live, nlive)
    else (.get num store, sptDelete num live, nlive.filter fun s => store ≠ s)
  | .opCurrHeap b num src, live, nlive, _ =>
    if sptLookup num live = none then (.skip, live, nlive)
    else (.opCurrHeap b num src, sptInsert src () (sptDelete num live),
      nlive.filter fun s => WordStore.currHeap ≠ s)
  | .locValue r l1, live, nlive, _ =>
    if sptLookup r live = none then (.skip, live, nlive)
    else (.locValue r l1, sptDelete r live, nlive)
  | .set storeName exp, live, nlive, lt =>
    match exp with
    | .var r =>
      if storeName ∈ nlive then (.skip, live, nlive)
      else (.set storeName (.var r), sptInsert r () live, storeName :: nlive)
    | _ =>
      let prog := WordLangProgHOL.set storeName exp
      (prog, getLive prog live lt, [])
  | .seq s1 s2, live, nlive, lt =>
    let (s2, s2live, s2nlive) := removeDeadStructural s2 live nlive lt
    let (s1, s1live, s1nlive) := removeDeadStructural s1 s2live s2nlive lt
    let prog := joinSeq s1 s2
    (prog, s1live, s1nlive)
  | .mustTerminate s1, live, nlive, lt =>
    let (s1, s1live, s1nlive) := removeDeadStructural s1 live nlive lt
    (.mustTerminate s1, s1live, s1nlive)
  | .ite cmp r1 ri e2 e3, live, nlive, lt =>
    let (e2, e2Live, e2Nlive) := removeDeadStructural e2 live nlive lt
    let (e3, e3Live, e3Nlive) := removeDeadStructural e3 live nlive lt
    let unionLive := sptUnion e2Live e3Live
    let liveset := match ri with
      | .reg r2 => sptInsert r2 () (sptInsert r1 () unionLive)
      | _ => sptInsert r1 () unionLive
    let nliveset := e2Nlive.filter fun s => s ∈ e3Nlive
    let prog := match e2, e3 with
      | .skip, .skip => .skip
      | _, _ => .ite cmp r1 ri e2 e3
    (prog, liveset, nliveset)
  | .call (some (v, cutsets, retHandler, l1, l2)) dest args h, live, nlive, lt =>
    let argsSet := numsetListInsert args .ln
    let cutset := sptUnion cutsets.1 cutsets.2
    let liveSet := sptUnion cutset argsSet
    let retHandler := (removeDeadStructural retHandler live nlive lt).1
    let h := match h with
      | none => none
      | some (v', prog, l1', l2') => some (v', (removeDeadStructural prog live nlive lt).1, l1', l2')
    (.call (some (v, cutsets, retHandler, l1, l2)) dest args h, liveSet, [])
  | .call none a b c, live, _, lt =>
    let prog := WordLangProgHOL.call none a b c
    (prog, getLive prog live lt, [])
  | .alloc a b, live, _, lt =>
    let prog := WordLangProgHOL.alloc a b
    (prog, getLive prog live lt, [])
  | .raise a, live, _, lt =>
    let prog := WordLangProgHOL.raise a
    (prog, getLive prog live lt, [])
  | .return a b, live, _, lt =>
    let prog := WordLangProgHOL.return a b
    (prog, getLive prog live lt, [])
  | .loop names body exitNames, _, _, lt =>
    let lt' := (names, exitNames) :: lt
    let body' := (removeDeadStructural body names [] lt').1
    (.loop names body' exitNames, names, [])
  | .break n, live, _, lt =>
    let prog := WordLangProgHOL.break n
    (prog, getLive prog live lt, [])
  | .continue n, live, _, lt =>
    let prog := WordLangProgHOL.continue n
    (prog, getLive prog live lt, [])
  | prog, live, nlive, lt => (prog, getLive prog live lt, nlive)
termination_by structural program => program

theorem removeDeadStructural_eq {width : Nat} [NeZero width]
    (p : WordLangProgHOL (BitVec width)) (live : NumSet)
    (nlive : List WordStoreHOL) (lt : List (NumSet × NumSet)) :
    removeDead p live nlive lt = removeDeadStructural p live nlive lt := by
  induction p using (measure (sizeOf : WordLangProgHOL (BitVec width) → Nat)).wf.induction generalizing live nlive lt with
  | h p ih =>
    change ∀ y, sizeOf y < sizeOf p → ∀ live nlive lt,
      removeDead y live nlive lt = removeDeadStructural y live nlive lt at ih
    cases p
    case set store value => cases value <;> simp only [removeDead, removeDeadStructural]
    case call returns target args handler =>
      cases returns with
      | none => simp only [removeDead, removeDeadStructural]
      | some ret =>
        rcases ret with ⟨v, cuts, body, l1, l2⟩
        cases handler with
        | none =>
          simp only [removeDead, removeDeadStructural]
          rw [ih body (by simp_wf; try decreasing_trivial)]
        | some h =>
          rcases h with ⟨v', body', l1', l2'⟩
          simp only [removeDead, removeDeadStructural]
          rw [ih body (by simp_wf; try decreasing_trivial),
            ih body' (by simp_wf; try decreasing_trivial)]
    case seq first second =>
      simp only [removeDead, removeDeadStructural]
      rw [ih second (by simp_wf; try decreasing_trivial), ih first (by simp_wf; try decreasing_trivial)]
      generalize (removeDeadStructural first (removeDeadStructural second live nlive lt).2.1
        (removeDeadStructural second live nlive lt).2.2 lt).1 = p1
      generalize (removeDeadStructural second live nlive lt).1 = p2
      cases p1 <;> cases p2 <;> rfl
    case mustTerminate body =>
      simp only [removeDead, removeDeadStructural]
      rw [ih body (by simp_wf; try decreasing_trivial)]
    case ite cmp condition right first second =>
      simp only [removeDead, removeDeadStructural]
      rw [ih first (by simp_wf; try decreasing_trivial), ih second (by simp_wf; try decreasing_trivial)]
      with_unfolding_all rfl
    case loop liveIn body liveOut =>
      simp only [removeDead, removeDeadStructural]
      rw [ih body (by simp_wf; try decreasing_trivial)]
    all_goals simp only [removeDead, removeDeadStructural]

#print axioms removeDeadStructural_eq
end Flapjack.WordAlloc
