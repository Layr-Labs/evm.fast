import InitECandidate.Proofs.CompactComputation
import Flapjack.Compiler.Backend.WordAlloc.FullSSA
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.SmallSsaKernelComputation
open Flapjack Flapjack.Compiler.Backend.WordAlloc
open Flapjack.WordAlloc (applyNummapKey applyNummapsKey)
mutual
 def expStructural {width : Nat} [NeZero width] (t : Spt Nat) :
     (expression : WordLangExpHOL (BitVec width)) → WordLangExpHOL (BitVec width)
  | .var n => .var (optionLookup t n)
  | .load e => .load (expStructural t e)
  | .op op es => .op op (expListStructural t es)
  | .shift sh e n => .shift sh (expStructural t e) (expStructural t n)
  | e => e
 termination_by structural expression => expression
 def expListStructural {width : Nat} [NeZero width] (t : Spt Nat) :
     (expressions : List (WordLangExpHOL (BitVec width))) → List (WordLangExpHOL (BitVec width))
  | [] => []
  | e :: es => expStructural t e :: expListStructural t es
 termination_by structural expressions => expressions
end

theorem expListStructural_eq_map {width : Nat} [NeZero width] (t : Spt Nat)
 (es : List (WordLangExpHOL (BitVec width))) : expListStructural t es = es.map (expStructural t) := by
 induction es with
 | nil => rfl
 | cons e es ih => simp only [expListStructural, List.map_cons, ih]

theorem expStructural_eq {width : Nat} [NeZero width] (t : Spt Nat)
 (e : WordLangExpHOL (BitVec width)) : ssaCcTransExp t e = expStructural t e := by
 fun_induction ssaCcTransExp t e
 all_goals simp_all only [expStructural, expListStructural_eq_map]
 all_goals simp_all

def ssaStructural {width : Nat} [NeZero width] :
    (program : WordLangProgHOL (BitVec width)) → (ssa : Spt Nat) → (na : Nat) →
      (lt : List (Spt Nat × Spt Unit × Spt Unit)) →
      WordLangProgHOL (BitVec width) × Spt Nat × Nat
  | .skip, ssa, na, _ => (.skip, ssa, na)
  | .move pri ls, ssa, na, _ =>
    let ls1 := ls.map Prod.fst
    let ls2 := ls.map Prod.snd
    let renLs2 := ls2.map (optionLookup ssa)
    let (renLs1, ssa', na') := listNextVarRename ls1 ssa na
    let force := (ls2.zip renLs1).filter fun (x, _) => decide (x ∉ ls1)
    (.move pri (renLs1.zip renLs2), forceRename force ssa', na')
  | .storeConsts _a _b c d ws, ssa, na, _ =>
    let c1 := optionLookup ssa c
    let d1 := optionLookup ssa d
    let (d2, ssa', na') := nextVarRename d ssa na
    let (c2, ssa'', na'') := nextVarRename c ssa' na'
    let prog := WordLangProgHOL.seq (.move 1 [(4, c1), (6, d1)])
      (.seq (.storeConsts 0 2 4 6 ws) (.move 1 [(c2, 4), (d2, 6)]))
    (prog, ssa'', na'')
  | .inst i, ssa, na, _ =>
    let (i', ssa', na') := ssaCcTransInst i ssa na
    (i', ssa', na')
  | .assign num exp, ssa, na, _ =>
    let exp' := expStructural ssa exp
    let (num', ssa', na') := nextVarRename num ssa na
    (.assign num' exp', ssa', na')
  | .get num store, ssa, na, _ =>
    let (num', ssa', na') := nextVarRename num ssa na
    (.get num' store, ssa', na')
  | .store exp num, ssa, na, _ =>
    let exp' := expStructural ssa exp
    let num' := optionLookup ssa num
    (.store exp' num', ssa, na)
  | .seq s1 s2, ssa, na, lt =>
    let (s1', ssa', na') := ssaStructural s1 ssa na lt
    let (s2', ssa'', na'') := ssaStructural s2 ssa' na' lt
    (.seq s1' s2', ssa'', na'')
  | .mustTerminate s1, ssa, na, lt =>
    let (s1', ssa', na') := ssaStructural s1 ssa na lt
    (.mustTerminate s1', ssa', na')
  | .ite cmp r1 ri e2 e3, ssa, na, lt =>
    let r1' := optionLookup ssa r1
    let ri' : WordRegImm (BitVec width) := match ri with
      | .reg r => .reg (optionLookup ssa r)
      | .imm v => .imm v
    let (e2', ssa2, na2) := ssaStructural e2 ssa na lt
    let (e3', ssa3, na3) := ssaStructural e3 ssa na2 lt
    let prio := mkPrio e2' e3'
    let (e2Cons, e3Cons, naFin, ssaFin) := fixInconsistencies prio ssa2 ssa3 na3
    (.ite cmp r1' ri' (.seq e2' e2Cons) (.seq e3' e3Cons), ssaFin, naFin)
  | .alloc num numset, ssa, na, _ =>
    let allNames := sptUnion numset.1 numset.2
    let ls := (sptToAList allNames).map Prod.fst
    let (stackMov, ssa', na') := listNextVarRenameMove ssa (na + 2) ls
    let num' := optionLookup ssa' num
    let stackSet := applyNummapsKey (optionLookup ssa') numset
    let ssaCut := sptInter ssa' allNames
    let (retMov, ssa'', na'') := listNextVarRenameMove ssaCut (na' + 2) ls
    let prog := WordLangProgHOL.seq stackMov
      (.seq (.move 1 [(2, num')]) (.seq (.alloc 2 stackSet) retMov))
    (prog, ssa'', na'')
  | .raise num, ssa, na, _ =>
    let num' := optionLookup ssa num
    let mov := WordLangProgHOL.move 1 [(2, num')]
    (.seq mov (.raise 2), ssa, na)
  | .opCurrHeap b dst src, ssa, na, _ =>
    let src' := optionLookup ssa src
    let (dst', ssa', na') := nextVarRename dst ssa na
    (.opCurrHeap b dst' src', ssa', na')
  | .return num nums, ssa, na, _ =>
    let num' := optionLookup ssa num
    let nums' := nums.map (optionLookup ssa)
    let rets := (List.range nums'.length).map fun x => 2 * (x + 1)
    let mov := WordLangProgHOL.move 0 (rets.zip nums')
    (.seq mov (.return num' rets), ssa, na)
  | .tick, ssa, na, _ => (.tick, ssa, na)
  | .set n exp, ssa, na, _ =>
    let exp' := expStructural ssa exp
    (.set n exp', ssa, na)
  | .locValue r l1, ssa, na, _ =>
    let (r', ssa', na') := nextVarRename r ssa na
    (.locValue r' l1, ssa', na')
  | .install ptr len dptr dlen numset, ssa, na, _ =>
    let allNames := sptUnion numset.1 numset.2
    let ls := (sptToAList allNames).map Prod.fst
    let (stackMov, ssa', na') := listNextVarRenameMove ssa (na + 2) ls
    let stackSet := applyNummapsKey (optionLookup ssa') numset
    let ptr' := optionLookup ssa' ptr
    let len' := optionLookup ssa' len
    let dptr' := optionLookup ssa' dptr
    let dlen' := optionLookup ssa' dlen
    let ssaCut := sptInter ssa' allNames
    let (ptr'', ssa'', na'') := nextVarRename ptr ssaCut (na' + 2)
    let (retMov, ssa''', na''') := listNextVarRenameMove ssa'' na'' ls
    let prog := WordLangProgHOL.seq stackMov
      (.seq (.move 1 [(2, ptr'), (4, len')])
        (.seq (.install 2 4 dptr' dlen' stackSet) (.seq (.move 1 [(ptr'', 2)]) retMov)))
    (prog, ssa''', na''')
  | .codeBufferWrite r1 r2, ssa, na, _ =>
    (.codeBufferWrite (optionLookup ssa r1) (optionLookup ssa r2), ssa, na)
  | .dataBufferWrite r1 r2, ssa, na, _ =>
    (.dataBufferWrite (optionLookup ssa r1) (optionLookup ssa r2), ssa, na)
  | .ffi ffiIndex ptr1 len1 ptr2 len2 numset, ssa, na, _ =>
    let allNames := sptUnion numset.1 numset.2
    let ls := (sptToAList allNames).map Prod.fst
    let (stackMov, ssa', na') := listNextVarRenameMove ssa (na + 2) ls
    let stackSet := applyNummapsKey (optionLookup ssa') numset
    let cptr1 := optionLookup ssa' ptr1
    let clen1 := optionLookup ssa' len1
    let cptr2 := optionLookup ssa' ptr2
    let clen2 := optionLookup ssa' len2
    let ssaCut := sptInter ssa' allNames
    let (retMov, ssa'', na'') := listNextVarRenameMove ssaCut (na' + 2) ls
    let prog := WordLangProgHOL.seq stackMov
      (.seq (.move 1 [(2, cptr1), (4, clen1), (6, cptr2), (8, clen2)])
        (.seq (.ffi ffiIndex 2 4 6 8 stackSet) retMov))
    (prog, ssa'', na'')
  | .call none dest args h, ssa, na, _ =>
    let names := args.map (optionLookup ssa)
    let convArgs := (List.range names.length).map fun x => 2 * x
    let moveArgs := WordLangProgHOL.move 1 (convArgs.zip names)
    let prog := WordLangProgHOL.seq moveArgs (.call none dest convArgs h)
    (prog, ssa, na)
  | .call (some (ret, numset, retHandler, l1, l2)) dest args h, ssa, na, lt =>
    let allNames := sptUnion numset.1 numset.2
    let ls := (sptToAList allNames).map Prod.fst
    let (stackMov, ssa', na') := listNextVarRenameMove ssa (na + 2) ls
    let stackSet := applyNummapsKey (optionLookup ssa') numset
    let names := args.map (optionLookup ssa)
    let convArgs := (List.range names.length).map fun x => 2 * (x + 1)
    let moveArgs := WordLangProgHOL.move 1 (convArgs.zip names)
    let ssaCut := sptInter ssa' allNames
    let (retMov, ssa'', na'') := listNextVarRenameMove ssaCut (na' + 2) ls
    let (ret', ssa2p, na2p) := listNextVarRename ret ssa'' na''
    let (renRetHandler, ssa2, na2) := ssaStructural retHandler ssa2p na2p lt
    let regs := (List.range ret.length).map fun x => 2 * (x + 1)
    let movRetHandler := WordLangProgHOL.seq retMov
      (.seq (.move 1 (ret'.zip regs)) renRetHandler)
    match h with
    | none =>
      let prog := WordLangProgHOL.seq stackMov (.seq moveArgs
        (.call (some (regs, stackSet, movRetHandler, l1, l2)) dest convArgs none))
      (prog, ssa2, na2)
    | some (n, h, l1', l2') =>
      let (n', ssa3p, na3p) := nextVarRename n ssa'' na2
      let (renExcHandler, ssa3, na3) := ssaStructural h ssa3p na3p lt
      let movExcHandler := WordLangProgHOL.seq retMov
        (.seq (.move 1 [(n', 2)]) renExcHandler)
      let prio := mkPrio movRetHandler movExcHandler
      let (retCons, excCons, naFin, ssaFin) := fixInconsistencies prio ssa2 ssa3 na3
      let consRetHandler := WordLangProgHOL.seq movRetHandler retCons
      let consExcHandler := WordLangProgHOL.seq movExcHandler excCons
      let prog := WordLangProgHOL.seq stackMov (.seq moveArgs
        (.call (some (regs, stackSet, consRetHandler, l1, l2)) dest convArgs
          (some (2, consExcHandler, l1', l2'))))
      (prog, ssaFin, naFin)
  | .shareInst op v exp, ssa, na, _ =>
    let exp' := expStructural ssa exp
    if op = .store ∨ op = .store8 ∨ op = .store16 ∨ op = .store32 then
      (.shareInst op (optionLookup ssa v) exp', ssa, na)
    else
      let (v', ssa', na') := nextVarRename v ssa na
      (.shareInst op v' exp', ssa', na')
  | .loop names body exitNames, ssa, na, lt =>
    let (setupProg, ssaRefreshed, naRefreshed) := loopSetup names exitNames ssa na
    let ssaNames := applyNummapKey (optionLookup ssaRefreshed) names
    let ssaExit := applyNummapKey (optionLookup ssaRefreshed) exitNames
    let ssaBody := sptInter ssaRefreshed names
    let (body', ssa', na') :=
      ssaStructural body ssaBody naRefreshed ((ssaRefreshed, names, exitNames) :: lt)
    let backMoves : WordLangProgHOL (BitVec width) := ssaReconcile ssa' ssaRefreshed names
    let bodyFinal := match backMoves with
      | .skip => body'
      | _ => .seq body' backMoves
    (.seq setupProg (.loop ssaNames bodyFinal ssaExit), sptInter ssaRefreshed exitNames, na')
  | .break n, ssa, na, lt =>
    match lt[n]? with
    | none => (.break n, ssa, na)
    | some (tgtSsa, _names, exitNames) =>
      let moves : WordLangProgHOL (BitVec width) := ssaReconcile ssa tgtSsa exitNames
      (match moves with
        | .skip => .break n
        | _ => .seq moves (.break n), ssa, na)
  | .continue n, ssa, na, lt =>
    match lt[n]? with
    | none => (.continue n, ssa, na)
    | some (tgtSsa, names, _exitNames) =>
      let moves : WordLangProgHOL (BitVec width) := ssaReconcile ssa tgtSsa names
      (match moves with
        | .skip => .continue n
        | _ => .seq moves (.continue n), ssa, na)

termination_by structural program _ssa _na _lt => program

/-- Every original SSA clause is retained, with its expression traversal expressed structurally. -/
theorem ssaStructural_eq {width : Nat} [NeZero width]
 (program : WordLangProgHOL (BitVec width)) (ssa : Spt Nat) (na : Nat)
 (lt : List (Spt Nat × Spt Unit × Spt Unit)) :
 ssaCcTrans program ssa na lt = ssaStructural program ssa na lt := by
 fun_induction ssaCcTrans program ssa na lt
 all_goals simp_all (config := { zetaDelta := true }) only [ssaStructural, expStructural_eq]
 all_goals rfl

#print axioms ssaStructural_eq

def fullSsaStructural {width : Nat} [NeZero width] (count : Nat)
 (program : WordLangProgHOL (BitVec width)) : WordLangProgHOL (BitVec width) :=
 let limit := limitVar program
 let (move, names, next) := setupSSA (outputWidth := width) count limit program
 let (program', _, _) := ssaStructural program names next []
 .seq move program'

theorem fullSsaStructural_eq {width : Nat} [NeZero width] (count : Nat)
 (program : WordLangProgHOL (BitVec width)) :
 fullSsaCcTrans count program = fullSsaStructural count program := by
 unfold fullSsaCcTrans fullSsaStructural
 simp only [ssaStructural_eq]

#print axioms fullSsaStructural_eq
end InitECandidate.Proofs.SmallSsaKernelComputation
