import InitE.SourceSemantics
import InitE.SourceMainFacts
import Flapjack.Pancake.PanToTarget.MainFirstSemantics

/-!
# The code map of the source run

`InitE.sourceBehaviour` runs `semanticsDecls`, which installs every top-level
function with `evaluateDeclsHOLFinite` before starting `main`. Each
`.function fi` updates `code` at `fi.name`, so after a successful run the code
map at `f` holds the entry of the last function declaration named `f`, or the
initial entry when there is none (`evaluateDeclsHOLFinite_code_lookup`).

For the fixed guest the initial map is empty, so the code map is the computable
`guestCode` (`guestDecls_code_lookup`). Guest function names are distinct
(`InitE.sourceDistinctFunctions`, transferred across `mainFirstHOL`), so every
guest function is found under its own name with its translated body
(`guestCode_function`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString

set_option autoImplicit false

section Generic

variable {width : Nat} [NeZero width]

/-- The code entry of the last `.function` declaration named `f`, if any. -/
def lastFunctionEntry : List (DeclHOL width) → MlS →
    Option (List (MlS × ShapeHOL) × ProgHOL width × ShapeHOL)
  | [], _ => none
  | .function fi :: rest, f =>
      (lastFunctionEntry rest f).or
        (if fi.name = f then some (fi.params, fi.body, fi.returnShape) else none)
  | .decl _ _ _ :: rest, f => lastFunctionEntry rest f
  | .exnDecl _ _ :: rest, f => lastFunctionEntry rest f
  | .name _ _ :: rest, f => lastFunctionEntry rest f

/-- Sequential finite-map updates with the program's function entries: the last
entry for `f` wins, otherwise the original lookup. -/
theorem FUPDATE_LIST_functionsHOL (decls : List (DeclHOL width))
    (m : FiniteMap MlS (List (MlS × ShapeHOL) × ProgHOL width × ShapeHOL)) (f : MlS) :
    FUPDATE_LIST m (functionsHOL decls) f = (lastFunctionEntry decls f).or (m f) := by
  induction decls generalizing m with
  | nil => rfl
  | cons d rest ih =>
    cases d with
    | function fi =>
      simp only [functionsHOL, FUPDATE_LIST_cons, lastFunctionEntry, ih, Option.or_assoc]
      congr 1
      by_cases h : fi.name = f
      · simp [FUPDATE, h]
      · simp [FUPDATE, h]
    | decl _ _ _ => exact ih m
    | exnDecl _ _ => exact ih m
    | name _ _ => exact ih m

/-- **Part 1.** After a successful `evaluateDeclsHOLFinite`, the code map at `f`
is the entry of the last `.function fi` with `fi.name = f`, or the initial
lookup when the declarations contain no function named `f`. -/
theorem evaluateDeclsHOLFinite_code_lookup {σ : Type}
    (s : PanSemStateFiniteExact width σ) {_ : DecidablePred s.memaddrs}
    (decls : List (DeclHOL width)) (s' : PanSemStateFiniteExact width σ)
    (h : evaluateDeclsHOLFinite s decls = some s') (f : MlS) :
    s'.code.lookup f = (lastFunctionEntry decls f).or (s.code.lookup f) := by
  rw [evaluateDeclsHOLFinite_functions s decls s' h, HolFiniteMapExact.lookup_updateList,
    FUPDATE_LIST_functionsHOL]

/-- Starting from an empty code map, the code map is exactly `lastFunctionEntry`. -/
theorem evaluateDeclsHOLFinite_code_lookup_of_empty {σ : Type}
    (s : PanSemStateFiniteExact width σ) {_ : DecidablePred s.memaddrs}
    (hempty : ∀ f, s.code.lookup f = none)
    (decls : List (DeclHOL width)) (s' : PanSemStateFiniteExact width σ)
    (h : evaluateDeclsHOLFinite s decls = some s') :
    s'.code.lookup = lastFunctionEntry decls := by
  funext f
  rw [evaluateDeclsHOLFinite_code_lookup s decls s' h f, hempty f, Option.or_none]

/-- A found entry comes from a function declaration of that name. -/
theorem lastFunctionEntry_eq_some {decls : List (DeclHOL width)} {f : MlS}
    {e : List (MlS × ShapeHOL) × ProgHOL width × ShapeHOL}
    (h : lastFunctionEntry decls f = some e) :
    ∃ fi : FunDeclHOL width, .function fi ∈ decls ∧ fi.name = f ∧
      e = (fi.params, fi.body, fi.returnShape) := by
  induction decls with
  | nil => simp [lastFunctionEntry] at h
  | cons d rest ih =>
    cases d with
    | function gi =>
      simp only [lastFunctionEntry] at h
      cases hr : lastFunctionEntry rest f with
      | some e' =>
        rw [hr] at h
        simp only [Option.some_or, Option.some.injEq] at h
        subst h
        obtain ⟨fi, hm, hn, he⟩ := ih hr
        exact ⟨fi, List.mem_cons_of_mem _ hm, hn, he⟩
      | none =>
        rw [hr, Option.none_or] at h
        by_cases hn : gi.name = f
        · rw [if_pos hn, Option.some.injEq] at h
          exact ⟨gi, List.mem_cons_self, hn, h.symm⟩
        · rw [if_neg hn] at h
          exact absurd h (by simp)
    | decl _ _ _ =>
      obtain ⟨fi, hm, hn, he⟩ := ih h
      exact ⟨fi, List.mem_cons_of_mem _ hm, hn, he⟩
    | exnDecl _ _ =>
      obtain ⟨fi, hm, hn, he⟩ := ih h
      exact ⟨fi, List.mem_cons_of_mem _ hm, hn, he⟩
    | name _ _ =>
      obtain ⟨fi, hm, hn, he⟩ := ih h
      exact ⟨fi, List.mem_cons_of_mem _ hm, hn, he⟩

/-- No function named `f` means no entry. -/
theorem lastFunctionEntry_eq_none {decls : List (DeclHOL width)} {f : MlS}
    (h : f ∉ (functionsHOL decls).map Prod.fst) : lastFunctionEntry decls f = none := by
  induction decls with
  | nil => rfl
  | cons d rest ih =>
    cases d with
    | function gi =>
      simp only [functionsHOL, List.map_cons, List.mem_cons, not_or] at h
      simp only [lastFunctionEntry, ih h.2, Option.none_or]
      rw [if_neg (Ne.symm h.1)]
    | decl _ _ _ => exact ih h
    | exnDecl _ _ => exact ih h
    | name _ _ => exact ih h

/-- With distinct function names, each function is found under its own name. -/
theorem lastFunctionEntry_of_mem {decls : List (DeclHOL width)}
    (hnodup : ((functionsHOL decls).map Prod.fst).Nodup)
    {fi : FunDeclHOL width} (hmem : .function fi ∈ decls) :
    lastFunctionEntry decls fi.name = some (fi.params, fi.body, fi.returnShape) := by
  induction decls with
  | nil => simp at hmem
  | cons d rest ih =>
    cases d with
    | function gi =>
      simp only [functionsHOL, List.map_cons, List.nodup_cons] at hnodup
      simp only [lastFunctionEntry]
      rcases List.mem_cons.mp hmem with heq | hrest
      · cases heq
        rw [lastFunctionEntry_eq_none hnodup.1, Option.none_or, if_pos rfl]
      · rw [ih hnodup.2 hrest, Option.some_or]
    | decl _ _ _ =>
      rcases List.mem_cons.mp hmem with heq | hrest
      · cases heq
      · exact ih hnodup hrest
    | exnDecl _ _ =>
      rcases List.mem_cons.mp hmem with heq | hrest
      · cases heq
      · exact ih hnodup hrest
    | name _ _ =>
      rcases List.mem_cons.mp hmem with heq | hrest
      · cases heq
      · exact ih hnodup hrest

/-- Declaration evaluation never changes the two memory domains. -/
theorem evaluateDeclsHOLFinite_domains {σ : Type} :
    ∀ (s : PanSemStateFiniteExact width σ) (hs : DecidablePred s.memaddrs)
      (decls : List (DeclHOL width)) (s' : PanSemStateFiniteExact width σ),
      @evaluateDeclsHOLFinite width σ _ s hs decls = some s' →
      s'.memaddrs = s.memaddrs ∧ s'.shMemaddrs = s.shMemaddrs := by
  intro s hs decls
  induction decls generalizing s with
  | nil =>
      intro s' h
      simp only [evaluateDeclsHOLFinite, Option.some.injEq] at h
      subst h
      exact ⟨rfl, rfl⟩
  | cons d rest ih =>
      intro s' h
      cases d with
      | name _ _ =>
          simp only [evaluateDeclsHOLFinite] at h
          exact ih s hs s' h
      | decl shape name e =>
          simp only [evaluateDeclsHOLFinite] at h
          split at h
          · rename_i value _
            split at h
            · exact ih (setGlobalHOLFinite name value s) hs s' h
            · cases h
          · cases h
      | function fd =>
          simp only [evaluateDeclsHOLFinite] at h
          split at h
          · exact ih { s with code := s.code.update (fd.name, fd.params, fd.body, fd.returnShape) }
              hs s' h
          · cases h
      | exnDecl en esh =>
          simp only [evaluateDeclsHOLFinite] at h
          split at h
          · exact ih { s with eshapes := s.eshapes.update (en, esh) } hs s' h
          · cases h

theorem functionsHOL_append' (xs ys : List (DeclHOL width)) :
    functionsHOL (xs ++ ys) = functionsHOL xs ++ functionsHOL ys := by
  induction xs with
  | nil => rfl
  | cons d rest ih => cases d <;> simp [functionsHOL, ih]

/-- `mainFirstHOL` only permutes the function names of a program with `main`. -/
theorem functionNames_mainFirstHOL_perm (program : List (DeclHOL width))
    (hasMain : ∃ fi : FunDeclHOL width, .function fi ∈ program ∧ fi.name = ofString "main") :
    ((functionsHOL (Pancake.PanToTarget.mainFirstHOL program)).map Prod.fst).Perm
      ((functionsHOL program).map Prod.fst) := by
  obtain ⟨before, fi, rest, hprog, _, hmoved⟩ :=
    Pancake.PanToTarget.mainFirstHOL_of_main program hasMain
  rw [hmoved, hprog]
  simp only [functionsHOL, functionsHOL_append', List.map_cons, List.map_append]
  exact List.perm_middle.symm

end Generic

/-! ### The fixed guest -/

/-- The declarations the source run installs. -/
abbrev guestDecls : List (DeclHOL 64) := Guest.Software.guestAst.map declToHOL

/-- The code map of every successful source run (see `guestDecls_code_lookup`). -/
def guestCode : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  lastFunctionEntry guestDecls

/-- **Part 2.** The declarations evaluated by `InitE.sourceBehaviour` install the
code map `guestCode`, for every input and struct context. -/
theorem guestDecls_code_lookup (input : Guest.InputBlob) (st : StructContextExact)
    {_ : DecidablePred ({ InitE.sourceInitialState input with structs := st }).memaddrs}
    (s' : PanSemStateFiniteExact 64 Guest.HostMemory)
    (h : evaluateDeclsHOLFinite { InitE.sourceInitialState input with structs := st }
      (Guest.Software.guestAst.map declToHOL) = some s') :
    s'.code.lookup = guestCode :=
  evaluateDeclsHOLFinite_code_lookup_of_empty _ (fun _ => rfl) _ s' h

/-- The source behaviour either fails during declaration evaluation or is the
semantics of `main` from a state whose code map is `guestCode`. -/
theorem sourceBehaviour_code (input : Guest.InputBlob) :
    InitE.sourceBehaviour input = .fail ∨
      ∃ s' : PanSemStateFiniteExact 64 Guest.HostMemory, s'.code.lookup = guestCode ∧
        InitE.sourceBehaviour input = semantics s' (ofString "main") := by
  unfold InitE.sourceBehaviour semanticsDecls
  split
  · exact Or.inl rfl
  · rename_i st _
    split
    · exact Or.inl rfl
    · rename_i s' hs'
      exact Or.inr ⟨s', guestDecls_code_lookup input st s' hs', rfl⟩

/-- The declarations evaluated by `InitE.sourceBehaviour` keep the source memory domains
`InitE.ordinaryDomain` and `InitE.sharedDomain`. -/
theorem guestDecls_domains (input : Guest.InputBlob) (st : StructContextExact)
    {_ : DecidablePred ({ InitE.sourceInitialState input with structs := st }).memaddrs}
    (s' : PanSemStateFiniteExact 64 Guest.HostMemory)
    (h : evaluateDeclsHOLFinite { InitE.sourceInitialState input with structs := st }
      (Guest.Software.guestAst.map declToHOL) = some s') :
    s'.memaddrs = InitE.ordinaryDomain ∧ s'.shMemaddrs = InitE.sharedDomain :=
  evaluateDeclsHOLFinite_domains _ _ _ s' h

/-- The source behaviour either fails during declaration evaluation or is the
semantics of `main` from a state with code map `guestCode` and memory domains
`InitE.ordinaryDomain` / `InitE.sharedDomain`. -/
theorem sourceBehaviour_state (input : Guest.InputBlob) :
    InitE.sourceBehaviour input = .fail ∨
      ∃ s' : PanSemStateFiniteExact 64 Guest.HostMemory, s'.code.lookup = guestCode ∧
        s'.memaddrs = InitE.ordinaryDomain ∧ s'.shMemaddrs = InitE.sharedDomain ∧
        InitE.sourceBehaviour input = semantics s' (ofString "main") := by
  unfold InitE.sourceBehaviour semanticsDecls
  split
  · exact Or.inl rfl
  · rename_i st _
    split
    · exact Or.inl rfl
    · rename_i s' hs'
      obtain ⟨h1, h2⟩ := guestDecls_domains input st s' hs'
      exact Or.inr ⟨s', guestDecls_code_lookup input st s' hs', h1, h2, rfl⟩

/-- Function names of the guest are pairwise distinct. -/
theorem guestFunctionNames_nodup : ((functionsHOL guestDecls).map Prod.fst).Nodup :=
  (functionNames_mainFirstHOL_perm guestDecls InitE.sourceHasMain).nodup_iff.mp
    InitE.sourceDistinctFunctions

/-- **Part 3 (HOL form).** Every guest function is found under its own name. -/
theorem guestCode_of_mem {fi : FunDeclHOL 64} (h : .function fi ∈ guestDecls) :
    guestCode fi.name = some (fi.params, fi.body, fi.returnShape) :=
  lastFunctionEntry_of_mem guestFunctionNames_nodup h

/-- **Part 3.** Every function of the literal guest AST is found under its own
name, with its translated body. -/
theorem guestCode_function {fd : Flapjack.FunDecl (BitVec 64)}
    (h : Decl.function fd ∈ Guest.Software.guestAst) :
    guestCode (ofString fd.name) =
      some (fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape) :=
  guestCode_of_mem (fi := funDeclToHOL fd) (List.mem_map_of_mem h)

/-- Every entry of `guestCode` is a translated function of the literal guest AST. -/
theorem guestCode_eq_some {f : MlS} {e : List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL}
    (h : guestCode f = some e) :
    ∃ fd : Flapjack.FunDecl (BitVec 64), Decl.function fd ∈ Guest.Software.guestAst ∧
      ofString fd.name = f ∧
      e = (fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape) := by
  obtain ⟨fi, hm, hn, he⟩ := lastFunctionEntry_eq_some h
  obtain ⟨d, hd, hdfi⟩ := List.mem_map.mp hm
  cases d with
  | function fd =>
    simp only [declToHOL, DeclHOL.function.injEq] at hdfi
    subst hdfi
    exact ⟨fd, hd, hn, he⟩
  | decl _ _ _ => simp [declToHOL] at hdfi
  | exnDecl _ _ => simp [declToHOL] at hdfi
  | name _ _ => simp [declToHOL] at hdfi

end InitECandidate.Solver.SourceCost

#print axioms InitECandidate.Solver.SourceCost.evaluateDeclsHOLFinite_code_lookup
#print axioms InitECandidate.Solver.SourceCost.guestDecls_code_lookup
#print axioms InitECandidate.Solver.SourceCost.sourceBehaviour_code
#print axioms InitECandidate.Solver.SourceCost.sourceBehaviour_state
#print axioms InitECandidate.Solver.SourceCost.guestFunctionNames_nodup
#print axioms InitECandidate.Solver.SourceCost.guestCode_function
#print axioms InitECandidate.Solver.SourceCost.guestCode_eq_some
