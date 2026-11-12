import InitECandidate.Solver.MemSafe.Init.Run
import InitECandidate.Solver.SourceCost.InitGlobals

/-!
# Init: the precondition `P` of `main` and `mem_init`

`PInit s`: every defined global is `0`, the globals the inits use are defined, and `@base = 0xa1000000`.
`pInit_of_panDeclsInit`: it holds at every post-declaration state (for every starting clock).
`wi_after_mem_init`: `mem_init` establishes `WI [] Pnd0`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL DeclHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

def declaredB (decls : List (DeclHOL 64)) (g : MlS) : Bool :=
  decls.any fun d => match d with | .decl _ n _ => n == g | _ => false

theorem decls_def {σ : Type} : ∀ (decls : List (DeclHOL 64)) (s : PanSemStateFiniteExact 64 σ)
    (hs : DecidablePred s.memaddrs) (s' : PanSemStateFiniteExact 64 σ),
    @evaluateDeclsHOLFinite 64 σ _ s hs decls = some s' →
      s'.baseAddr = s.baseAddr ∧ (∀ g, (s.globals.lookup g).isSome → (s'.globals.lookup g).isSome) ∧
        (∀ g, declaredB decls g = true → (s'.globals.lookup g).isSome)
  | [], s, hs, s', h => by
      simp only [evaluateDeclsHOLFinite, Option.some.injEq] at h
      subst h
      exact ⟨rfl, fun _ h => h, fun g hg => by simp [declaredB] at hg⟩
  | d :: rest, s, hs, s', h => by
      cases d with
      | name a b =>
          simp only [evaluateDeclsHOLFinite] at h
          obtain ⟨h1, h2, h3⟩ := decls_def rest s hs s' h
          exact ⟨h1, h2, fun g hg => h3 g (by simpa [declaredB] using hg)⟩
      | decl shape name e =>
          simp only [evaluateDeclsHOLFinite] at h
          split at h
          · rename_i value hval
            split at h
            · obtain ⟨h1, h2, h3⟩ := decls_def rest (setGlobalHOLFinite name value s) hs s' h
              refine ⟨h1, fun g hg => h2 g ?_, fun g hg => ?_⟩
              · simp only [setGlobalHOLFinite, HolFiniteMapExact.lookup_update_pointwise]
                split <;> simp_all
              · by_cases hgn : name = g
                · subst hgn
                  apply h2
                  simp [setGlobalHOLFinite, HolFiniteMapExact.lookup_update_pointwise, FUPDATE]
                · exact h3 g (by simpa [declaredB, hgn] using hg)
            · cases h
          · cases h
      | function fd =>
          simp only [evaluateDeclsHOLFinite] at h
          split at h
          · obtain ⟨h1, h2, h3⟩ := decls_def rest _ _ s' h
            exact ⟨h1, h2, fun g hg => h3 g (by simpa [declaredB] using hg)⟩
          · cases h
      | exnDecl en esh =>
          simp only [evaluateDeclsHOLFinite] at h
          split at h
          · obtain ⟨h1, h2, h3⟩ := decls_def rest _ _ s' h
            exact ⟨h1, h2, fun g hg => h3 g (by simpa [declaredB] using hg)⟩
          · cases h

def initNames : List MlS := guestC.GT.map Prod.fst ++ [gHeap, gFrame, gScratch]

theorem initNames_declared :
    initNames.all (declaredB (Guest.Software.guestAst.map Pancake.PanLang.declToHOL)) = true := by
  decide +kernel

/-- The precondition of `main`. -/
def PInit {σ : Type} (s : State σ) : Prop :=
  GlobalsZero s ∧ (∀ g ∈ initNames, (s.globals.lookup g).isSome = true) ∧
    s.baseAddr = BitVec.ofNat 64 InitE.sourceBase

theorem pInit_clock {σ : Type} {s : State σ} (k : Nat) (h : PInit s) : PInit { s with clock := k } := h

theorem lookup_Pnd0 {g : MlS} {t : Nat} (h : guestC.GT.lookup g = some (.ptr t)) : g ∈ Pnd0 := by
  have := mem_of_lookup _ _ _ h
  simp only [Pnd0, List.mem_filterMap]
  exact ⟨(g, .ptr t), this, rfl⟩

theorem initNames_GT {g : MlS} {k : FK} (h : guestC.GT.lookup g = some k) : g ∈ initNames := by
  have := mem_of_lookup _ _ _ h
  simp only [initNames, List.mem_append, List.mem_map]
  exact Or.inl ⟨(g, k), this, rfl⟩

theorem wi_mem_init {σ : Type} {s0 t : State σ} (hP : PInit s0)
    (hg : t.globals = ((s0.globals.update (gHeap, .val (.word (BitVec.ofNat 64 2701131776)))).update
      (gScratch, .val (.word (BitVec.ofNat 64 2965299200)))).update
      (gFrame, .val (.word (BitVec.ofNat 64 2952790016)))) : WI [] Pnd0 t := by
  obtain ⟨hz, hd, -⟩ := hP
  have hHeap : gword t gHeap = some (BitVec.ofNat 64 2701131776) := by
    unfold gword; rw [hg, lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]
    rw [lookup_update_self]
  have hScr : gword t gScratch = some (BitVec.ofNat 64 2965299200) := by
    unfold gword; rw [hg, lookup_update_ne _ _ (by decide), lookup_update_self]
  have hFr : gword t gFrame = some (BitVec.ofNat 64 2952790016) := by
    unfold gword; rw [hg, lookup_update_self]
  refine ⟨⟨2701131776, 2952790016, 2965299200⟩, ?_, ?_, ⟨fun o ho => by simp at ho, fun i j hi => by simp at hi⟩,
    fun o ho => by simp at ho, ?_⟩
  · unfold ptrsOf; rw [hHeap, hFr, hScr]; simp [BitVec.toNat_ofNat]
  · simp [Ptrs.Ordered, heapBase, heapEnd, scratchEnd]
  · intro g k hk
    obtain ⟨ha, hb, hc⟩ := GT_key_not_alloc hk
    have hdef := hd g (initNames_GT hk)
    obtain ⟨u, hu⟩ := Option.isSome_iff_exists.mp hdef
    have hu0 := hz g u hu
    have htg : t.globals.lookup g = s0.globals.lookup g := by
      rw [hg, lookup_update_ne _ _ hb.symm, lookup_update_ne _ _ hc.symm, lookup_update_ne _ _ ha.symm]
    refine ⟨0, ?_, fun _ => rfl, fun hn => ?_⟩
    · unfold gword; rw [htg, hu, hu0]
    · cases k with
      | scalar => trivial
      | prot => trivial
      | ptr t' => exact absurd (lookup_Pnd0 hk) hn
      | nptr t' => exact Or.inl (by simp [nullMax])
      | uptr ts => exact Or.inl (by simp [nullMax])
      | bnd => simp [Fits]

end InitECandidate.Solver.MemSafe.Init
