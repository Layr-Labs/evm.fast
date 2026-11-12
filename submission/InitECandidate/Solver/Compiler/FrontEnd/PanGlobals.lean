import InitECandidate.Solver.Compiler.FrontEnd.Basic
import Flapjack.Pancake.Proofs.PanGlobals.CompileTopSemanticsDecls

/-!
# `pan_globals` at the clock level

`pan_globals` (`compile_top`) renames the entry `start` to a fresh `nm`, compiles every body
lock-step, and adds a new entry `start = Seq (nested initialisers) (TailCall nm [])`. Flapjack's
`compileTopSemanticsDeclsHOL` (`Pancake/Proofs/PanGlobals/CompileTopSemanticsDecls.lean`) chains
four semantics equalities, each proved from a per-clock fact that drops the final clock:

* `semanticsFpermHOL` (renaming): `evaluateFpermPrimeHOL` is an exact equation (`fperm_runStep`);
* `semanticsEmptyLocals`: `panGlobals_call_emptyLocals_observation` compares results and
  io-events only; restated with clock and FFI state (`panGlobals_call_emptyLocals_clock`,
  `emptyLocals_runStep`);
* `stateRelImpSemanticsHOL`: `PanGlobalsCompileCorrectAssembly.compileCorrectHOL` relates the
  final states by `panGlobalsStateRelHOLExact`, which contains clock and FFI equality
  (`panGlobals_stateRel_runStep`);
* `semanticsInitCall'`: `SemInitSupport.step` matches the new entry at clock `k + 1` with the
  renamed entry at clock `k` in result and FFI state; the final clocks follow from
  `pan_clock_of_agree` (`initCall_runStep`). The initialisers consume no clock, so the new `main`
  costs exactly one tick.

`panGlobals_lockStep` is `compileTopSemanticsDeclsHOL` (same hypotheses) with the conclusion
`PanLockStep s start code t start (compileTopExactHOL code start) id 1`; its proof is Flapjack's
with the last step replaced by the composition of the four run steps.
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.Pancake.PanLang
open Flapjack.PanGlobalsCompileDecsStructural Flapjack.PanGlobalsDeclListExact
open Flapjack.PanSemStateFiniteExact Flapjack.PanGlobalsCompileTopSemanticsDecls

set_option autoImplicit false

variable {width : Nat} {σ : Type} [NeZero width]

/-- Renaming entry runs (`semanticsFpermHOL`'s per-clock equation). -/
theorem fperm_runStep (f g : MlS) (state : PanSemStateFiniteExact width σ) (start : MlS) :
    PanRunStep state start { state with code := fpermCodeHOL f g state.code }
      (fpermName f g start) id 0 := by
  classical
  intro k r s1 hrun _
  dsimp only [panRun] at hrun ⊢
  have runs : evaluateHOLFiniteState
      { state with code := fpermCodeHOL f g state.code, clock := k }
      (.call none (fpermName f g start) []) =
      (fun outcome : Option (PanSemResultExact width) × PanSemStateFiniteExact width σ =>
        (outcome.1, { outcome.2 with code := fpermCodeHOL f g outcome.2.code }))
        (evaluateHOLFiniteState { state with clock := k } (.call none start [])) := by
    simpa [fpermHOL] using evaluateFpermPrimeHOL f g (.call none start []) state k
  rw [hrun] at runs
  exact ⟨_, runs, rfl, rfl⟩

/-- `panGlobals_call_emptyLocals_observation` with final clock and FFI state (same proof). -/
theorem panGlobals_call_emptyLocals_clock (state : PanSemStateFiniteExact width σ) (start : MlS) :
    let first := evaluateHOLFiniteState state (.call none start [])
    let second := evaluateHOLFiniteState (emptyLocalsHOLFinite state) (.call none start [])
    (first.1, first.2.clock, first.2.ffi) = (second.1, second.2.clock, second.2.ffi) := by
  classical
  let context : FiniteEvalContext width σ :=
    ⟨state, fun a => Classical.propDecidable (state.memaddrs a),
      fun a => Classical.propDecidable (state.shMemaddrs a)⟩
  let cleared := FiniteEvalContext.emptyLocalsContextHOLFinite context
  have hclear : evaluateHOLFiniteState (emptyLocalsHOLFinite state) (.call none start []) =
      (match evalPanSemRecursiveCallFiniteContext (.call none start []) cleared with
       | some pair => (pair.1, pair.2.state)
       | none => (none, emptyLocalsHOLFinite state)) := by
    unfold evaluateHOLFiniteState evaluateHOLFiniteStateWithDeciders
    rw [evalPanSemRecursiveCallFiniteContext_state_eq
      (.call none start []) _ cleared rfl]
    rfl
  rw [hclear]
  unfold evaluateHOLFiniteState evaluateHOLFiniteStateWithDeciders
  change _ = _
  rw [evalPanSemRecursiveCallFiniteContext.eq_5,
    evalPanSemRecursiveCallFiniteContext.eq_5]
  simp only [evalListHOLFinite, evalListHOLExact]
  cases hlookup : lookupCodeHOLFinite state.code.lookup start [] with
  | none => simp [context, cleared, emptyLocalsHOLFinite, hlookup]
  | some data =>
      obtain ⟨body, callee, shape⟩ := data
      have hentry : callEntryContextHOLFinite context callee =
          callEntryContextHOLFinite cleared callee := FiniteEvalContext.ext rfl
      by_cases hclock : state.clock = 0
      · simp [context, cleared, emptyLocalsHOLFinite, hlookup, hclock]
      · simp only [show cleared.state.code = state.code from rfl,
          show cleared.state.clock = state.clock from rfl, hlookup, if_neg hclock]
        rw [← hentry]
        cases hbody : evalPanSemRecursiveCallFiniteContext body
            (callEntryContextHOLFinite context callee) with
        | none => simp [emptyLocalsHOLFinite]
        | some output =>
            obtain ⟨result, post⟩ := output
            have hstate : callEntryStateHOLFinite context.state callee =
                callEntryStateHOLFinite cleared.state callee := rfl
            rw [← hstate]
            cases result with
            | none => rfl
            | some result =>
                cases result <;> try rfl
                rename_i value
                by_cases hshape : shapeEqHOL (shapeOfHOLExact value) shape = true
                · simp [hshape]
                  exact ⟨rfl, rfl⟩
                · simp [hshape]
                  exact ⟨rfl, rfl⟩

/-- Emptying the caller locals of the entry call (`semanticsEmptyLocals`, per clock). -/
theorem emptyLocals_runStep (state : PanSemStateFiniteExact width σ) (start : MlS) :
    PanRunStep state start (emptyLocalsHOLFinite state) start id 0 := by
  intro k r s1 hrun _
  dsimp only [panRun] at hrun ⊢
  rcases ht : evaluateHOLFiniteState { emptyLocalsHOLFinite state with clock := k }
      (.call none start []) with ⟨r', t1⟩
  have h := panGlobals_call_emptyLocals_clock { state with clock := k } start
  have he : emptyLocalsHOLFinite { state with clock := k } =
      { emptyLocalsHOLFinite state with clock := k } := rfl
  simp only [he, hrun, ht, Prod.mk.injEq] at h
  obtain ⟨rfl, h2, h3⟩ := h
  refine ⟨t1, ?_, h2.symm, h3.symm⟩
  first | rfl | exact ht

/-- Related states (`stateRelImpSemanticsHOL`, per clock): `compileCorrectHOL` keeps the
clock and FFI conjuncts of `panGlobalsStateRelHOLExact`. -/
theorem panGlobals_stateRel_runStep (context : PanGlobalsContextExact width)
    (source target : PanSemStateFiniteExact width σ) (start : MlS)
    (hrel : panGlobalsStateRelHOLExact true context source target) :
    PanRunStep source start target start id 0 := by
  classical
  intro k r s1 hrun hr
  have compiledEntry : compileProgExactHOL context (.call none start [] : ProgHOL width) =
      .call none start [] := by simp [compileProgExactHOL, compileExpExactHOLList]
  have hclock : panGlobalsStateRelHOLExact true context
      { source with clock := k } { target with clock := k } :=
    ⟨hrel.1, hrel.2.1, hrel.2.2.1, hrel.2.2.2.1, hrel.2.2.2.2.1, rfl, hrel.2.2.2.2.2.2⟩
  obtain ⟨targetPost, ht, hr'⟩ := PanGlobalsCompileCorrectAssembly.compileCorrectHOL
    (.call none start []) { source with clock := k } r context { target with clock := k } s1
    ⟨hclock, hrun, hr.1⟩
  rw [compiledEntry] at ht
  rcases hr' with ⟨_, _, _, _, _, hclk, _, _, _, _, _, _, _, hffi, _⟩
  exact ⟨targetPost, ht, hclk.symm, hffi.symm⟩

/-- The new entry (`semanticsInitCall'`, per clock): the entry `start` of `s`, whose body runs
clock-free initialisers `body` and tail-calls `start'`, matches the entry `start'` of the
post-initialiser state `s'` with one extra tick. -/
theorem initCall_runStep (s : PanSemStateFiniteExact width σ) (start : MlS) (body : ProgHOL width)
    (start' : MlS) (rshape : ShapeHOL) (args' : List (MlS × ShapeHOL)) (body' : ProgHOL width)
    (s' : PanSemStateFiniteExact width σ)
    (h1 : s.code.lookup start = some ([], .seq body (.call none start' []), rshape))
    (h2 : s.code.lookup start' = some (args', body', rshape))
    (h3 : evaluateHOLFiniteState { s with locals := HolFiniteMapExact.empty } body = (none, s'))
    (h4 : s'.clock = s.clock) :
    PanRunStep s' start' s start id 1 := by
  classical
  let tin : PanSemStateFiniteExact width σ := { s with locals := HolFiniteMapExact.empty }
  have hcs : EvaluateClockSubCall.Mc tin body :=
    EvaluateClockSubCall.mc_of_pair tin body
      (evaluateClockSubHOLFinite body (PanPropsEvalStateFiniteExact.ofPanSemFinite tin))
  have hzero :
      evaluateHOLFiniteState { tin with clock := 0 } body = (none, { s' with clock := 0 }) := by
    have hpre : evaluateHOLFiniteState tin body =
        (none, { { s' with clock := 0 } with
          clock := ({ s' with clock := 0 }).clock + s.clock }) := by
      rw [show tin = { s with locals := HolFiniteMapExact.empty } from rfl, h3]
      congr 1
      simp only [Nat.zero_add]
      rw [← h4]
    have h := hcs none { s' with clock := 0 } s.clock hpre (by simp)
    simpa only [tin, Nat.sub_self] using h
  have hstep : ∀ k,
      evaluateHOLFiniteState { s with locals := HolFiniteMapExact.empty, clock := k } body =
        (none, { s' with clock := k }) := by
    intro k
    have h := panPropsEvaluateAddClockEq body { tin with clock := 0 } none
      { s' with clock := 0 } k ⟨hzero, by simp⟩
    simpa only [tin, Nat.zero_add] using h
  have hS := SemInitSupport.step s s' start start' body body' args' rshape h1 h2 hstep
  have h0 := SemInitSupport.step0 s start _ rshape h1
  intro k r s1 hrun hr
  dsimp only [panRun] at hrun ⊢
  obtain ⟨t1, ht1, hclk⟩ := pan_clock_of_agree s' s (.call none start' []) (.call none start [])
    1 (fun j hj => by obtain rfl : j = 0 := by omega
                      exact h0.1)
    (fun k => (hS k).1) k r s1 hrun hr.2
  refine ⟨t1, ht1, hclk, ?_⟩
  have := (hS k).2
  rw [ht1] at this
  change t1.ffi = (evaluateHOLFiniteState { s' with clock := k } (.call none start' [])).2.ffi at this
  rw [this]
  change (evaluateHOLFiniteState { s' with clock := k } (.call none start' [])).2.ffi = s1.ffi
  rw [hrun]

private theorem bvSubZero' {width : Nat} (x : BitVec width) : x - 0 = x := by
  apply BitVec.eq_of_toNat_eq
  simp

/-- **`pan_globals`, clock level.** The hypotheses are exactly those of Flapjack's
`compileTopSemanticsDeclsHOL`; the entry runs are lock-step with identical results and one extra
tick (the new `main`'s call of the renamed original entry). -/
theorem panGlobals_lockStep {width : Nat} {σ : Type} [NeZero width]
    (s t : PanSemStateFiniteExact width σ) (code : List (DeclHOL width)) (start : MlS)
    (mgs : BitVec width) (freeAddrs : BitVec width → Prop)
    (tmem : BitVec width → HolWordLab width)
    (tlocals : HolFiniteMapExact MlS (ValueHOL width))
    (h : ((functionsHOL code).map Prod.fst).Nodup ∧
      t = { s with
        topAddr := s.topAddr + mgs
        memaddrs := fun address => s.memaddrs address ∨ freeAddrs address
        memory := tmem
        locals := tlocals } ∧
      s.code = HolFiniteMapExact.empty ∧
      s.globals = HolFiniteMapExact.empty ∧
      panGlobalsByteAlignedHOL s.topAddr ∧
      goodDimindex width ∧
      mgs = panBytesInWord width *
        BitVec.ofNat width ((decShapesHOL code).map sizeOfShapeHOL).sum ∧
      freeAddrs = Flapjack.Compiler.Backend.StackRemove.addresses s.topAddr
        ((decShapesHOL code).map sizeOfShapeHOL).sum ∧
      (∀ address, s.memaddrs address → ¬ freeAddrs address) ∧
      (∀ address, s.memaddrs address → s.memory address = tmem address) ∧
      ¬ s.memaddrs (s.topAddr + mgs) ∧
      (panBytesInWord width).toNat * ((decShapesHOL code).map sizeOfShapeHOL).sum <
        2 ^ width ∧
      (∀ d ∈ code, isFunctionHOL d = true ∨ isDeclHOL d = true ∨ isExnDeclHOL d = true) ∧
      semanticsDecls s start code ≠ .fail) :
    PanLockStep s start code t start (compileTopExactHOL code start) id 1 := by
  classical
  obtain ⟨hdistinct, ht, hcode, hglobals, halign, hgood, rfl, rfl, hdisj, hmem,
    htopNot, hbound, hkinds, hnf⟩ := h
  obtain ⟨body, rshape, hmain⟩ := PanPropsHasMain.semanticsDeclsHasMainPrime s start code hnf
  have hkindsB : code.all (fun d => isFunctionHOL d || isDeclHOL d || isExnDeclHOL d) =
      true := by
    apply List.all_eq_true.mpr
    intro d hd
    rcases hkinds d hd with h | h | h <;> simp [h]
  have hstc := decsStcnamesHOLExact_of_functions_or_decls_or_exnDecls [] code hkindsB
  have hstcT : decsStcnamesHOLExact (width := width) [] (compileTopExactHOL code start) =
      some [] := by
    apply decsStcnamesHOLExact_of_functions_or_decls_or_exnDecls
    apply List.all_eq_true.mpr
    intro d hd
    rcases compile_top_only_functions_or_exnsHOL code start d hd with h | h <;> simp [h]
  intro s1 hs1''
  unfold panDeclsInit at hs1'' ⊢
  simp only [hstc, hstcT] at hs1'' ⊢
  have hstartLookup : (functionsHOL code).lookup start = some ([], body, rshape) := by
    rw [hcode, emptyUpdateListLookup _ _ hdistinct] at hmain; exact hmain
  have hs1 : @PanSemStateFiniteExact.evaluateDeclsHOLFinite width σ _
      { s with structs := [] } (fun a => Classical.propDecidable (s.memaddrs a)) code =
        some s1 := hs1''
  clear hs1''
  rw [evaluateCompileTopOfSource _ s1 { t with structs := [] } code start _ hs1 hstartLookup
    hkinds rfl (by rw [ht])]
  refine ⟨_, rfl, ?_⟩
  try simp only
  -- Source evaluation in HOL's resorted order: exceptions, declarations, functions.
  have hpart : resortDeclsHOL code = code.filter isExnDeclHOL ++ code.filter isDeclHOL ++
      code.filter isFunctionHOL := by
    have hnames : code.filter isNameHOL = [] := by
      apply List.filter_eq_nil_iff.mpr
      intro d hd
      rcases hkinds d hd with h | h | h <;> cases d <;>
        simp_all [isNameHOL, isFunctionHOL, isDeclHOL, isExnDeclHOL]
    simp [resortDeclsHOL, hnames]
  have hs1orig := hs1
  have hres := Flapjack.resortDeclsEvaluate { s with structs := [] } code hkindsB
  rw [← hres, hpart, Flapjack.evaluateDeclsHOLFinite_append,
    Flapjack.evaluateDeclsHOLFinite_append] at hs1
  cases hsE : @PanSemStateFiniteExact.evaluateDeclsHOLFinite width σ _
      { s with structs := [] } (fun a => Classical.propDecidable (s.memaddrs a))
      (code.filter isExnDeclHOL) with
  | none => simp [hsE] at hs1
  | some sE =>
  cases hsD : @PanSemStateFiniteExact.evaluateDeclsHOLFinite width σ _
      sE (fun a => Classical.propDecidable (sE.memaddrs a)) (code.filter isDeclHOL) with
  | none => simp [hsE, hsD] at hs1
  | some sD =>
  simp only [hsE, hsD, Option.bind_some] at hs1
  have hsEform := evalExnsForm _ _ sE (fun d hd => (List.mem_filter.mp hd).2) hsE
  have hs1form := evalFunsForm _ _ s1 (fun d hd => (List.mem_filter.mp hd).2) hs1
  have hsDcode : sD.code = sE.code := by
    have := evaluateDeclsHOLFinite_functions sE _ sD hsD
    rw [this, functionsHOL_filter_isDecl]
    rfl
  -- The compiler's declaration-list result and the explicit target code table.
  rcases hc : compileDecsExactHOL
      ({ globals := HolFiniteMapExact.empty, globalsSize := 0,
         maxGlobalsSize := cakeBytesInWord width * BitVec.ofNat width
           ((decShapesHOL code).map sizeOfShapeHOL).sum } : PanGlobalsContextExact width)
      (fpermDecsHOL start (newMainNameHOL code) (resortDeclsHOL code)) with
    ⟨inits, funsC, exnsC, ctx⟩
  have hexplicit := PanGlobalsCompileTopSemanticsExact.evaluateDeclsCompileTopHOLFinite
    _ s1 code start [] body rshape inits funsC exnsC ctx ⟨hs1orig, hstartLookup, hkinds, hc⟩
  have hgeneric := evaluateCompileTopOfSource _ s1 { s with structs := [] } code start _ hs1orig
    hstartLookup hkinds rfl rfl
  rw [hgeneric] at hexplicit
  have htable := congrArg PanSemStateFiniteExact.code (Option.some.inj hexplicit)
  simp only at htable
  clear hexplicit hgeneric hres
  subst hsEform
  clear hsE hs1orig hpart hstc hstcT hmain
  simp only at hsD hsDcode
  obtain ⟨N, hNdef⟩ : ∃ N, N = ((decShapesHOL code).map sizeOfShapeHOL).sum := ⟨_, rfl⟩
  obtain ⟨nm, hnm⟩ : ∃ nm, nm = newMainNameHOL code := ⟨_, rfl⟩
  rw [← hNdef] at ht hdisj htopNot hbound hc
  rw [← hnm] at hc htable
  obtain ⟨T, hT⟩ : ∃ T : PanSemStateFiniteExact width σ, T = { t with
    structs := []
    code := t.code.updateList (functionsHOL (compileTopExactHOL code start))
    eshapes := t.eshapes.updateList (exceptionsHOL (compileTopExactHOL code start)) } :=
    ⟨_, rfl⟩
  rw [← hT]
  have hTcode : T.code = (HolFiniteMapExact.empty.update
      (start, [], .seq (nestedSeqHOL inits) (.call none nm []), rshape)).updateList
      ((functionsHOL (fpermDecsHOL start nm code)).map (fun entry =>
        (entry.1, entry.2.1, compileProgExactHOL ctx entry.2.2.1, entry.2.2.2))) := by
    rw [hT]; simp only; rw [ht]; simp only; rw [htable, hcode]; rfl
  -- Initial-globals simulation of the declaration initialisers.
  have hcD : compileDecsExactHOL
      ({ globals := HolFiniteMapExact.empty, globalsSize := 0,
         maxGlobalsSize := cakeBytesInWord width * BitVec.ofNat width N } :
         PanGlobalsContextExact width) (code.filter isDeclHOL) = (inits, [], [], ctx) := by
    have := compile_decs_FILTER_declsHOL _ _ _ _ _ _ hc
    rwa [filterDeclFperm, filterDeclResort] at this
  have hND : ((decShapesHOL (code.filter isDeclHOL)).map sizeOfShapeHOL).sum = N := by
    rw [(dec_shapes_FILTERHOL code).2.2.1]; exact hNdef.symm
  obtain ⟨t', hrun, hrel', hclk, hffi, hloc, -⟩ := PanGlobalsInitGlobalsAssembly.initGlobalsAll _ (code.filter isDeclHOL) _ sD
    inits [] [] ctx { T with locals := HolFiniteMapExact.empty } _
    ⟨hsD, fun d hd => (List.mem_filter.mp hd).2, hcD, by
      unfold panGlobalsStateRelHOLExact
      subst hT ht
      refine ⟨?_, fun h => absurd h (by decide), rfl, rfl, ?_, rfl, rfl, rfl, ?_, ?_,
        fun a h => Or.inl h, rfl, hmem, rfl, ?_, ?_, ?_, ?_, hgood⟩
      · change s.topAddr = s.topAddr + panBytesInWord width * BitVec.ofNat width N -
          panBytesInWord width * BitVec.ofNat width N
        rw [BitVec.add_sub_cancel]
      · rw [exceptionsFilterExn, exceptions_compile_topHOL code start _ hstartLookup]
      · intro name value h
        rw [hglobals] at h
        cases h
      · intro name shape address h
        cases h
      · intro f ps p rs h
        rw [hcode] at h
        cases h
      · intro _ _ _ _ _ _ _ h
        exact absurd (by rw [hglobals]; rfl) h
      · rintro (h | h)
        · exact htopNot h
        · exact topNotInAddresses hgood _ _ hbound h
      · exact alignedAdd hgood _ _ halign
          (PanGlobalsInitGlobalsAlignment.byteAlignedBytesInWordMulHOL _ hgood), rfl, by
      intro a h
      rw [hND]
      subst hT ht
      change ¬ Flapjack.Compiler.Backend.StackRemove.addresses
        (s.topAddr + panBytesInWord width * BitVec.ofNat width N -
          panBytesInWord width * BitVec.ofNat width N - 0) N a
      rw [bvSubZero', BitVec.add_sub_cancel]
      exact hdisj a h, by
      intro a h
      rw [hND] at h
      subst hT ht
      change Flapjack.Compiler.Backend.StackRemove.addresses
        (s.topAddr + panBytesInWord width * BitVec.ofNat width N -
          panBytesInWord width * BitVec.ofNat width N - 0) N a at h
      rw [bvSubZero', BitVec.add_sub_cancel] at h
      exact Or.inr h,
      alignedZero, hcode, by
      rintro v sh addr ⟨h1, -⟩
      change (s.globals.lookup v).isSome = true at h1
      rw [hglobals] at h1
      (cases h1), by rw [hND]; exact hbound⟩
  -- Function-table facts for the renamed and compiled code.
  have hnmFresh : nm ∉ (functionsHOL code).map Prod.fst := by
    rw [hnm]; exact new_main_name_correctHOL code
  have hstartMem : start ∈ (functionsHOL code).map Prod.fst :=
    List.mem_map.mpr ⟨_, lookupMem _ _ _ hstartLookup, rfl⟩
  have hnmStart : nm ≠ start := fun h => hnmFresh (h ▸ hstartMem)
  have hfpNodup := ALL_DISTINCT_fperm_decsHOL start nm code hdistinct
  have hLkeys : ((functionsHOL (fpermDecsHOL start nm code)).map (fun entry =>
      (entry.1, entry.2.1, compileProgExactHOL ctx entry.2.2.1, entry.2.2.2))).map Prod.fst =
      (functionsHOL (fpermDecsHOL start nm code)).map Prod.fst := by
    rw [List.map_map]; rfl
  have hLNodup := hLkeys ▸ hfpNodup
  have hTlookup : ∀ f entry, (f, entry) ∈ functionsHOL (fpermDecsHOL start nm code) →
      T.code.lookup f = some (entry.1, compileProgExactHOL ctx entry.2.1, entry.2.2) := by
    intro f entry hmem
    rw [hTcode, HolFiniteMapExact.lookup_updateList, fupdateListLookup,
      lookupReverseOfNodup _ _ hLNodup,
      lookupOfMemNodup _ f (entry.1, compileProgExactHOL ctx entry.2.1, entry.2.2)
        (List.mem_map.mpr ⟨(f, entry), hmem, rfl⟩) hLNodup]
  have hstartNotRenamed : start ∉ (functionsHOL (fpermDecsHOL start nm code)).map Prod.fst := by
    rw [functionsFpermDecsHOL, List.map_map]
    intro hmem
    obtain ⟨entry, hentry, heq⟩ := List.mem_map.mp hmem
    simp only [Function.comp, fpermName] at heq
    by_cases h1 : start = entry.1
    · rw [if_pos h1] at heq; exact hnmStart heq
    · rw [if_neg h1] at heq
      by_cases h2 : nm = entry.1
      · exact hnmFresh (List.mem_map.mpr ⟨entry, hentry, h2.symm⟩)
      · rw [if_neg h2] at heq; exact h1 heq.symm
  -- Target: the initialiser call reduces to the renamed original entry.
  have hL1 : T.code.lookup start =
      some ([], .seq (nestedSeqHOL inits) (.call none nm []), rshape) := by
    rw [hTcode, HolFiniteMapExact.lookup_updateList, fupdateListLookup,
      lookupNoneOfNotMem _ _ (by
        rw [List.map_reverse, List.mem_reverse, hLkeys]; exact hstartNotRenamed)]
    simp [HolFiniteMapExact.update, FUPDATE]
  have hbodyMem : (nm, ([] : List (MlS × ShapeHOL)), fpermHOL start nm body, rshape) ∈
      functionsHOL (fpermDecsHOL start nm code) := by
    rw [functionsFpermDecsHOL]
    refine List.mem_map.mpr ⟨(start, [], body, rshape), lookupMem _ _ _ hstartLookup, ?_⟩
    simp [fpermName]
  have hL2 := hTlookup nm _ hbodyMem
  have hinitCall := initCall_runStep T start (nestedSeqHOL inits) nm rshape []
    (compileProgExactHOL ctx (fpermHOL start nm body)) t' hL1 hL2 hrun hclk
  -- Source: rename the entry, empty the locals, and relate to the target.
  have hsDempty : sD.code = HolFiniteMapExact.empty := hsDcode.trans hcode
  have hupd : ∀ (m : HolFiniteMapExact MlS (List (MlS × ShapeHOL) × ProgHOL width × ShapeHOL))
      (l : List (MlS × List (MlS × ShapeHOL) × ProgHOL width × ShapeHOL)),
      m.updateList l = m.updateListEq l := by
    intro m l
    apply HolFiniteMapExact.ext
    funext k
    simp only [HolFiniteMapExact.lookup_updateList, HolFiniteMapExact.lookup_updateListEq]
    rw [FUPDATE_LIST_HOL_eq_FUPDATE_LIST]
  have hC2 : fpermCodeHOL start nm s1.code =
      HolFiniteMapExact.empty.updateList (functionsHOL (fpermDecsHOL start nm code)) := by
    rw [hs1form]
    simp only
    rw [hsDempty, functionsHOL_filter_isFunction, hupd, hupd,
      fpermCodeHOL_updateList_functions, fpermCodeHOL_empty]
  have hfperm := fperm_runStep start nm s1 start
  have hname : fpermName start nm start = nm := by simp [fpermName]
  rw [hname, hC2] at hfperm
  have hempty := emptyLocals_runStep
    { s1 with code := (HolFiniteMapExact.empty.updateList
      (functionsHOL (fpermDecsHOL start nm code))) } nm
  have hinv := Flapjack.evaluateInvariantsHOLFinite (nestedSeqHOL inits)
    (PanPropsEvalStateFiniteExact.ofPanSemFinite { T with locals := HolFiniteMapExact.empty })
    none (PanPropsEvalStateFiniteExact.ofPanSemFinite t') (by
      simp [PanPropsEvalStateFiniteExact.evaluateHOLFinitePair,
        PanPropsEvalStateFiniteExact.toPanSemFinite_ofPanSemFinite, hrun])
  have htcode : t'.code = T.code := hinv.2.2.2.2.2.2.1
  have hrelT : panGlobalsStateRelHOLExact true ctx
      (emptyLocalsHOLFinite { s1 with code := (HolFiniteMapExact.empty.updateList
        (functionsHOL (fpermDecsHOL start nm code))) }) t' := by
    subst hs1form
    obtain ⟨h1, -, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, -, h16, h17, h18,
      h19⟩ := hrel'
    refine ⟨h1, fun _ => ?_, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, ?_, h16,
      h17, h18, h19⟩
    · rw [hloc]; rfl
    · intro f ps p rs hlk
      change (HolFiniteMapExact.empty.updateList
        (functionsHOL (fpermDecsHOL start nm code))).lookup f = _ at hlk
      rw [emptyUpdateListLookup _ _ hfpNodup] at hlk
      rw [htcode]
      exact hTlookup f (ps, p, rs) (lookupMem _ _ _ hlk)
  have hsem := panGlobals_stateRel_runStep ctx _ t' nm hrelT
  exact ((hfperm.trans panResMapOk_id hempty).trans panResMapOk_id hsem).trans panResMapOk_id
    hinitCall


end InitECandidate.Solver.Compiler.FrontEnd
