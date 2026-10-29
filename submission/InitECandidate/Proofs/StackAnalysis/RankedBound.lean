import InitECandidate.Proofs.StackAnalysis.Entries
import Flapjack.Misc.SptreeLookup
namespace InitECandidate.Proofs.StackAnalysis
open Flapjack Flapjack.Compiler.Backend
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-- A decidable certificate of present, strictly lower ranked direct calls.
All original continuation and handler branches are included. -/
def ranked (rank : Nat → Nat) (present : Nat → Bool) (n : Nat) :
    WordLangProgHOL (BitVec 64) → Bool
  | .seq p q => ranked rank present n p && ranked rank present n q
  | .ite _ _ _ p q => ranked rank present n p && ranked rank present n q
  | .call returns target _ handler =>
      match target with
      | none => false
      | some d => decide (rank d < rank n) && present d &&
          (match returns with | none => true | some (_,_,p,_,_) => ranked rank present n p) &&
          (match handler with | none => true | some (_,p,_,_) => ranked rank present n p)
  | .mustTerminate p => ranked rank present n p
  | .loop _ p _ => ranked rank present n p
  | .install _ _ _ _ _ => false
  | _ => true
termination_by p => sizeOf p

def bounded (result : Option Nat) (bound : Nat) : Prop :=
  ∃ value, result = some value ∧ value ≤ bound

private theorem bounded_zero : bounded (some 0) 0 := ⟨0, rfl, Nat.zero_le _⟩

private theorem bounded_weaken {v : Option Nat} {a b : Nat}
    (h : bounded v a) (le : a ≤ b) : bounded v b := by
  obtain ⟨x,hx,hb⟩ := h
  exact ⟨x,hx,Nat.le_trans hb le⟩
private theorem bounded_max {p q : Option Nat} {b : Nat}
    (hp : bounded p b) (hq : bounded q b) : bounded (WordDepth.optionMap₂ max p q) b := by
  obtain ⟨x,rfl,hx⟩ := hp
  obtain ⟨y,rfl,hy⟩ := hq
  exact ⟨max x y,rfl,max_le hx hy⟩
private theorem bounded_frame {sizes : Spt Nat} {n f b : Nat} {p : Option Nat}
    (hf : sptLookup n sizes = some f) (small : f ≤ 92) (hp : bounded p b) :
    bounded (WordDepth.optionMap₂ (· + ·) (sptLookup n sizes) p) (b + 92) := by
  obtain ⟨x,hx,hb⟩ := hp
  rw [hf,hx]
  exact ⟨f+x,rfl,by omega⟩
private theorem bounded_three {p : Option Nat} {b : Nat} (hp : bounded p b) :
    bounded (p.map (fun x => 3+x)) (b+3) := by
  obtain ⟨x,rfl,hx⟩ := hp
  exact ⟨3+x,rfl,by omega⟩

private theorem agree_delete
    (rank : Nat → Nat) (code : Nat → Option (Nat × WordLangProgHOL (BitVec 64)))
    (funs : Spt (Nat × WordLangProgHOL (BitVec 64))) (n d : Nat)
    (agree : ∀ i, rank i < rank n → sptLookup i funs = code i)
    (lower : rank d < rank n) :
    ∀ i, rank i < rank d → sptLookup i (sptDelete d funs) = code i := by
  intro i hi
  rw [sptLookup_sptDelete]
  have different : i ≠ d := by intro h; subst i; omega
  simp only [different, if_false]
  apply agree i
  omega

private theorem agree_lower
    (rank : Nat → Nat) (code : Nat → Option (Nat × WordLangProgHOL (BitVec 64)))
    (funs : Spt (Nat × WordLangProgHOL (BitVec 64))) (n d : Nat)
    (agree : ∀ i, rank i < rank n → sptLookup i funs = code i)
    (lower : rank d < rank n) :
    ∀ i, rank i < rank d → sptLookup i funs = code i := by
  intro i hi
  apply agree i
  omega

theorem callGraphDepth_bounded
    (rank : Nat → Nat) (code : Nat → Option (Nat × WordLangProgHOL (BitVec 64)))
    (sizes : Spt Nat)
    (codeRanked : ∀ i a p, code i = some (a,p) →
      ranked rank (fun k => (code k).isSome) i p = true)
    (frames : ∀ i, (code i).isSome = true → ∃ f, sptLookup i sizes = some f ∧ f ≤ 92)
    (funs : Spt (Nat × WordLangProgHOL (BitVec 64))) (n : Nat) (ns : List Nat)
    (total : Nat) (program : WordLangProgHOL (BitVec 64))
    (current : (code n).isSome = true)
    (agree : ∀ i, rank i < rank n → sptLookup i funs = code i)
    (good : ranked rank (fun k => (code k).isSome) n program = true) :
    bounded (WordDepth.Executable.callGraphDepth sizes funs n ns total program)
      ((rank n + 1) * 187) := by
  fun_induction WordDepth.Executable.callGraphDepth sizes funs n ns total program
  all_goals try simp only [ranked, Bool.and_eq_true, decide_eq_true_eq] at good
  all_goals try contradiction
  all_goals try exact ⟨0, rfl, Nat.zero_le _⟩
  case case1 funs n ns total p q ihp ihq =>
    exact bounded_max (ihp current agree good.1) (ihq current agree good.2)
  case case2 funs n ns total op condition right p q ihp ihq =>
    exact bounded_max (ihp current agree good.1) (ihq current agree good.2)
  case case5 funs n ns total ret args handler d guard missing =>
    rw [ranked.eq_def] at good
    simp only [Bool.and_eq_true, decide_eq_true_eq] at good
    have same := agree d good.1.1.1
    rw [missing] at same
    have present := good.1.1.2
    rw [← same] at present
    contradiction
  case case6 funs n ns total args handler d arity body lookup enough guard ih =>
    rw [ranked.eq_def] at good
    simp only [Bool.and_eq_true, decide_eq_true_eq] at good
    have lower := good.1.1.1
    have present := good.1.1.2
    have known : code d = some (arity,body) := (agree d lower).symm.trans lookup
    have child := ih present (agree_lower rank code funs n d agree lower)
      (codeRanked d arity body known)
    obtain ⟨f,hf,small⟩ := frames d present
    apply bounded_max
    · exact bounded_weaken (bounded_frame hf small bounded_zero) (by omega)
    · exact bounded_weaken child (by omega)
  case case8 funs n ns total args d arity body lookup rvalues cutsets retProg loc retloc newFuns guard ihchild ihret =>
    have lower := good.1.1.1
    have present := good.1.1.2
    have known : code d = some (arity,body) := (agree d lower).symm.trans lookup
    have child := ihchild present (agree_delete rank code funs n d agree lower)
      (codeRanked d arity body known)
    have cont := ihret current agree good.1.2
    obtain ⟨fn,hn,sn⟩ := frames n current
    obtain ⟨fd,hd,sd⟩ := frames d present
    apply bounded_max
    · exact bounded_weaken (bounded_frame hn sn (bounded_frame hd sd bounded_zero)) (by omega)
    · apply bounded_max
      · exact bounded_weaken (bounded_frame hn sn child) (by omega)
      · exact cont
  case case9 funs n ns total args d arity body lookup rvalues cutsets retProg loc retloc newFuns exception handler hloc hend guard ihchild ihhandler ihret =>
    have lower := good.1.1.1
    have present := good.1.1.2
    have known : code d = some (arity,body) := (agree d lower).symm.trans lookup
    have child := ihchild present (agree_delete rank code funs n d agree lower)
      (codeRanked d arity body known)
    have handled := ihhandler current agree good.2
    have cont := ihret current agree good.1.2
    obtain ⟨fn,hn,sn⟩ := frames n current
    obtain ⟨fd,hd,sd⟩ := frames d present
    apply bounded_max
    · exact bounded_weaken (bounded_frame hn sn (bounded_three (bounded_frame hd sd bounded_zero))) (by omega)
    · apply bounded_max
      · exact bounded_weaken (bounded_frame hn sn (bounded_three child)) (by omega)
      · exact bounded_max handled cont
  case case10 funs n ns total p ih =>
    exact ih current agree good
  case case11 funs n ns total dest cutsets =>
    obtain ⟨f,hf,small⟩ := frames n current
    exact bounded_weaken (bounded_frame hf small bounded_zero) (by omega)
  case case13 funs n ns total liveIn p liveOut ih =>
    exact ih current agree good

#print axioms callGraphDepth_bounded


def allSmall : Spt Nat → Bool
  | .ln => true
  | .ls f => decide (f ≤ 92)
  | .bn l r => allSmall l && allSmall r
  | .bs l f r => allSmall l && decide (f ≤ 92) && allSmall r

theorem lookup_allSmall (sizes : Spt Nat) (small : allSmall sizes = true)
    (i f : Nat) (found : sptLookup i sizes = some f) : f ≤ 92 := by
  induction sizes generalizing i with
  | ln => simp [sptLookup] at found
  | ls value =>
    simp only [allSmall, decide_eq_true_eq] at small
    simp only [sptLookup] at found
    split at found <;> simp_all
  | bn l r ihl ihr =>
    simp only [allSmall, Bool.and_eq_true] at small
    simp only [sptLookup] at found
    split at found
    · contradiction
    · split at found
      · exact ihl small.1 _ found
      · exact ihr small.2 _ found
  | bs l value r ihl ihr =>
    simp only [allSmall, Bool.and_eq_true, decide_eq_true_eq] at small
    simp only [sptLookup] at found
    split at found
    · simp only [Option.some.injEq] at found
      subst f
      exact small.1.2
    · split at found
      · exact ihl small.1.1 _ found
      · exact ihr small.2 _ found

theorem frames_of_domain (code : Spt (Nat × WordLangProgHOL (BitVec 64)))
    (sizes : Spt Nat)
    (domain : sptMap (fun _ => PUnit.unit) code = sptMap (fun _ => PUnit.unit) sizes)
    (small : allSmall sizes = true) :
    ∀ i, (sptLookup i code).isSome = true →
      ∃ f, sptLookup i sizes = some f ∧ f ≤ 92 := by
  intro i hi
  have same := congrArg (fun tree => (sptLookup i tree).isSome) domain
  simp only [sptLookup_sptMap, Option.isSome_map] at same
  have present : (sptLookup i sizes).isSome = true := same ▸ hi
  cases found : sptLookup i sizes with
  | none => simp [found] at present
  | some f => exact ⟨f,rfl,lookup_allSmall sizes small i f found⟩

private theorem alist_lookup_mem {α : Type} (entries : List (Nat × α)) (i : Nat)
    (v : α) (found : sptAListLookup i entries = some v) : (i,v) ∈ entries := by
  induction entries with
  | nil => simp [sptAListLookup] at found
  | cons entry rest ih =>
    rcases entry with ⟨j,w⟩
    simp only [sptAListLookup] at found
    split at found
    · simp_all
    · exact List.mem_cons_of_mem _ (ih found)

theorem ranked_lookup_of_all (rank : Nat → Nat) (present : Nat → Bool)
    (entries : List (Nat × Nat × WordLangProgHOL (BitVec 64)))
    (all : entries.all (fun (i,_,p) => ranked rank present i p) = true) :
    ∀ i a p, sptLookup i (sptFromAList entries) = some (a,p) →
      ranked rank present i p = true := by
  intro i a p found
  rw [sptLookup_sptFromAList] at found
  have member := alist_lookup_mem entries i (a,p) found
  exact List.all_eq_true.mp all _ member

theorem fullCallGraphDepth_bounded
    (rank : Nat → Nat) (code : Spt (Nat × WordLangProgHOL (BitVec 64)))
    (sizes : Spt Nat)
    (codeRanked : ∀ i a p, sptLookup i code = some (a,p) →
      ranked rank (fun k => (sptLookup k code).isSome) i p = true)
    (frames : ∀ i, (sptLookup i code).isSome = true → ∃ f, sptLookup i sizes = some f ∧ f ≤ 92)
    (n a : Nat) (p : WordLangProgHOL (BitVec 64))
    (found : sptLookup n code = some (a,p)) :
    bounded (WordDepth.Executable.fullCallGraphDepth sizes n code) ((rank n + 1)*187) := by
  unfold WordDepth.Executable.fullCallGraphDepth
  rw [found]
  have current : (sptLookup n code).isSome = true := by rw [found]; rfl
  apply bounded_max
  · obtain ⟨f,hf,small⟩ := frames n current
    exact bounded_weaken (bounded_frame hf small bounded_zero) (by omega)
  · exact callGraphDepth_bounded rank (fun i => sptLookup i code) sizes codeRanked frames
      code n [n] (sptSize code) p current (fun _ _ => rfl) (codeRanked n a p found)

#print axioms fullCallGraphDepth_bounded
end InitECandidate.Proofs.StackAnalysis

