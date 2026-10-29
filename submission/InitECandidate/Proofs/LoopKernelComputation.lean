import InitECandidate.Proofs.KernelComputation
import Flapjack.Pancake.CrepToLoop.ContextExact
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.LoopKernelComputation
open Flapjack
/-- Structurally bounded execution of the checked Loop live-set fixed point. -/
def fixedpointFuel {width : Nat} [NeZero width]
    (step : List (NumSet × NumSet) → NumSet → HolLoopProg width × NumSet) :
    Nat → List (NumSet × NumSet) → NumSet → NumSet → NumSet → Option (HolLoopProg width × NumSet)
  | 0, _, _, _, _ => none
  | fuel + 1, lt, liveIn, l1, l2 =>
      let (b, l0) := step ((sptInter liveIn l1, l2) :: lt) l2
      if sptInter liveIn l0 = l1 then some (b, l0)
      else if sptSize (sptInter liveIn l0) ≤ sptSize l1 then none
      else fixedpointFuel step fuel lt liveIn (sptInter liveIn l0) l2

def shrinkStructural {width : Nat} [NeZero width]
      (lt : List (NumSet × NumSet)) :
      (program : HolLoopProg width) → NumSet → HolLoopProg width × NumSet
    | .seq p1 p2, l =>
        let (p2', l) := shrinkStructural lt p2 l
        let (p1', l) := shrinkStructural lt p1 l
        (.seq p1' p2', l)
    | .loop liveIn body liveOut, l =>
        let l2 := sptInter liveOut l
        let bex := sptUnion liveIn l2
        match fixedpointFuel (fun ctx l => shrinkStructural ctx body l) (sptSize liveIn + 1) lt liveIn .ln bex with
        | some (body', l0) =>
            let l' := sptInter liveIn l0
            (.loop l' body' l2, l')
        | none =>
            let (b, _) := shrinkStructural ((liveIn, l2) :: lt) body bex
            (.loop liveIn b l2, liveIn)
    | .ite x1 x2 x3 p1 p2 l1, l =>
        let l' := sptInter l l1
        let (p1', l1') := shrinkStructural lt p1 l'
        let (p2', l2') := shrinkStructural lt p2 l'
        let l3 := match x3 with | .reg r => sptInsert r () .ln | _ => .ln
        (.ite x1 x2 x3 p1' p2' l', sptInsert x2 () (sptUnion l3 (sptUnion l1' l2')))
    | .mark p1, l => shrinkStructural lt p1 l
    | .break n, _ =>
        (.break n, match sptOel n lt with | some (_, brk) => brk | none => .ln)
    | .continue n, _ =>
        (.continue n, match sptOel n lt with | some (cont, _) => cont | none => .ln)
    | .fail, _ => (.fail, .ln)
    | .skip, l => (.skip, l)
    | .return vs, _ => (.return vs, sptListInsert vs .ln)
    | .raise v, _ => (.raise v, sptInsert v () .ln)
    | .arith a, l => (.arith a, arithVarsHOL a l)
    | .primitive lhss pop rhss, l =>
        (.primitive lhss pop rhss, sptListInsert rhss (sptListDelete lhss l))
    | .locValue n m, l =>
        match sptLookup n l with
        | none => (.skip, l)
        | some _ => (.locValue n m, sptDelete n l)
    | .assign n x, l =>
        match sptLookup n l with
        | none => (.skip, l)
        | some _ => (.assign n x, varsOfExpHOL x (sptDelete n l))
    | .shMem op r ad, l => (.shMem op r ad, varsOfExpHOL ad (sptInsert r () l))
    | .store e n, l => (.store e n, varsOfExpHOL e (sptInsert n () l))
    | .setGlobal name e, l => (.setGlobal name e, varsOfExpHOL e l)
    | .call ret dest args handler, l =>
        let a := sptFromAList (args.map fun x => (x, ()))
        match ret with
        | none => (.call none dest args none, sptUnion a l)
        | some (ns, l1) =>
            match handler with
            | none =>
                let l3 := sptListDelete ns (sptInter l l1)
                (.call (some (ns, l3)) dest args none, sptUnion a l3)
            | some (e, h, r, liveOut) =>
                let (r', l2) := shrinkStructural lt r l
                let (h', l3) := shrinkStructural lt h l
                let l1' := sptInter l1 (sptUnion (sptListDelete ns l2) (sptDelete e l3))
                (.call (some (ns, l1')) dest args (some (e, h', r', sptInter l liveOut)),
                  sptUnion a l1')
    | .ffi n r1 r2 r3 r4 l1, l =>
        (.ffi n r1 r2 r3 r4 (sptInter l1 l),
          sptInsert r1 () (sptInsert r2 () (sptInsert r3 () (sptInsert r4 () (sptInter l1 l)))))
    | .load32 x y, l => (.load32 x y, sptInsert x () (sptDelete y l))
    | .loadByte x y, l => (.loadByte x y, sptInsert x () (sptDelete y l))
    | .store32 x y, l => (.store32 x y, sptInsert x () (sptInsert y () l))
    | .storeByte x y, l => (.storeByte x y, sptInsert x () (sptInsert y () l))
    | .tick, l => (.tick, l)
termination_by structural program _l => program


/-- Every successful iteration strictly increases the bounded live-set size. -/
theorem fixedpointFuel_eq {width : Nat} [NeZero width]
    (body : HolLoopProg width)
    (step : List (NumSet × NumSet) → NumSet → HolLoopProg width × NumSet)
    (step_eq : ∀ ctx live, step ctx live = shrinkHOL ctx body live)
    (fuel : Nat) (lt : List (NumSet × NumSet)) (liveIn l1 l2 : NumSet)
    (enough : sptSize liveIn - sptSize l1 < fuel) :
    fixedpointFuel step fuel lt liveIn l1 l2 = fixedpointHOL lt liveIn l1 l2 body := by
  induction fuel generalizing lt liveIn l1 l2 with
  | zero => omega
  | succ fuel ih =>
    rw [fixedpointFuel, fixedpointHOL]
    simp only [step_eq]
    split
    · rfl
    · split
      · rfl
      · rename_i different growing
        apply ih
        have bounded := sptSize_inter_le liveIn (shrinkHOL ((sptInter liveIn l1, l2) :: lt) body l2).2
        have increase := Nat.lt_of_not_le growing
        omega

#print axioms fixedpointFuel_eq


/-- Structural evaluation preserves every clause of the original shrink pass. -/
theorem shrinkStructural_eq {width : Nat} [NeZero width]
    (p : HolLoopProg width) (lt : List (NumSet × NumSet)) (live : NumSet) :
    shrinkStructural lt p live = shrinkHOL lt p live := by
  induction p using (measure (sizeOf : HolLoopProg width → Nat)).wf.induction generalizing lt live with
  | h p ih =>
    change ∀ q, sizeOf q < sizeOf p → ∀ lt live,
      shrinkStructural lt q live = shrinkHOL lt q live at ih
    cases p
    case seq first second =>
      simp only [shrinkStructural, shrinkHOL]
      rw [ih second (by simp_wf; try decreasing_trivial),
        ih first (by simp_wf; try decreasing_trivial)]
    case ite cmp condition right first second cuts =>
      cases right <;> simp only [shrinkStructural, shrinkHOL] <;>
        rw [ih first (by simp_wf; try decreasing_trivial),
          ih second (by simp_wf; try decreasing_trivial)]
    case mark body =>
      simp only [shrinkStructural, shrinkHOL]
      exact ih body (by simp_wf; try decreasing_trivial) lt live
    case loop liveIn body liveOut =>
      simp only [shrinkStructural, shrinkHOL]
      rw [fixedpointFuel_eq body _
        (fun ctx l => ih body (by simp_wf; try decreasing_trivial) ctx l)
        _ _ _ _ _ (by simp only [sptSize]; omega)]
      cases heq : fixedpointHOL lt liveIn .ln (sptUnion liveIn (sptInter liveOut live)) body <;> simp only
      rw [ih body (by simp_wf; try decreasing_trivial)]
    case call returns target args handler =>
      cases returns with
      | none => simp only [shrinkStructural, shrinkHOL]
      | some ret =>
        rcases ret with ⟨names, cuts⟩
        cases handler with
        | none => simp only [shrinkStructural, shrinkHOL]
        | some handler =>
          rcases handler with ⟨exception, handlerBody, normalBody, liveOut⟩
          simp only [shrinkStructural, shrinkHOL]
          rw [ih normalBody (by simp_wf; try decreasing_trivial),
            ih handlerBody (by simp_wf; try decreasing_trivial)]
    all_goals simp only [shrinkStructural, shrinkHOL]
    all_goals rfl

#print axioms shrinkStructural_eq

def optimiseStructural {width : Nat} [NeZero width] (p : HolLoopProg width) : HolLoopProg width :=
  (markAllHOL (shrinkStructural [] (loopCallCompHOL (.ln : Spt Nat) p).1 .ln).1).1

theorem optimiseStructural_eq {width : Nat} [NeZero width] (p : HolLoopProg width) :
    optimiseHOL p = optimiseStructural p := by
  unfold optimiseHOL compHOL optimiseStructural
  rw [shrinkStructural_eq]

#print axioms optimiseStructural_eq

end InitECandidate.Proofs.LoopKernelComputation
