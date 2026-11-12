import InitECandidate.Solver.MemSafe.Ptx.PtGwTabs

/-!
# F3d: the globals `process_transaction`'s callees leave alone

**`funSpec_pt_gw`**: every function of `ptAllNames` (`pmNames` and the 65 further functions `process_transaction` reaches)
keeps every global outside `cW = pmW`, whatever the result.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem tgtW_mono {W W' : List MlS} (hW : ∀ g, g ∈ W → g ∈ W') :
    ∀ t : Option (VarKind × MlS), tgtW W t = true → tgtW W' t = true := by
  intro t h
  match t, h with
  | none, _ => rfl
  | some (.«local», _), _ => rfl
  | some (.«global», n), h =>
    simp only [tgtW, List.contains_iff_mem] at h ⊢
    exact hW n h

theorem gwOnly_mono {W W' S S' : List MlS} (hW : ∀ g, g ∈ W → g ∈ W') (hS : ∀ f, f ∈ S → f ∈ S')
    (p : ProgHOL 64) : gwOnly W S p = true → gwOnly W' S' p = true := by
  have hc : ∀ f, S.contains f = true → S'.contains f = true := by
    intro f h; simp only [List.contains_iff_mem] at h ⊢; exact hS f h
  induction p using gwOnly.induct with
  | case1 k n e => intro h; simpa [gwOnly] using tgtW_mono hW _ (by simpa [gwOnly] using h)
  | case2 a k n b => intro h; simpa [gwOnly] using tgtW_mono hW _ (by simpa [gwOnly] using h)
  | case3 a b c d ih => intro h; simpa [gwOnly] using ih (by simpa [gwOnly] using h)
  | case4 a b iha ihb =>
    intro h
    simp only [gwOnly, Bool.and_eq_true] at h ⊢
    exact ⟨iha h.1, ihb h.2⟩
  | case5 c a b iha ihb =>
    intro h
    simp only [gwOnly, Bool.and_eq_true] at h ⊢
    exact ⟨iha h.1, ihb h.2⟩
  | case6 c b ih => intro h; simpa [gwOnly] using ih (by simpa [gwOnly] using h)
  | case7 f a => intro h; simpa [gwOnly] using hc _ (by simpa [gwOnly] using h)
  | case8 tgt f a =>
    intro h
    simp only [gwOnly, Bool.and_eq_true] at h ⊢
    exact ⟨hc _ h.1, tgtW_mono hW _ h.2⟩
  | case9 tgt x y hp f a ih =>
    intro h
    simp only [gwOnly, Bool.and_eq_true] at h ⊢
    exact ⟨⟨hc _ h.1.1, tgtW_mono hW _ h.1.2⟩, ih h.2⟩
  | case10 a b f c k ih =>
    intro h
    simp only [gwOnly, Bool.and_eq_true] at h ⊢
    exact ⟨hc _ h.1, ih h.2⟩
  | case11 t h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 =>
    intro h
    cases t with
    | assign k n e => exact (h1 k n e rfl).elim
    | shMemLoad a b c d => exact (h2 a b c d rfl).elim
    | dec a b c d => exact (h3 a b c d rfl).elim
    | seq a b => exact (h4 a b rfl).elim
    | ite a b c => exact (h5 a b c rfl).elim
    | «while» a b => exact (h6 a b rfl).elim
    | call i f a =>
      cases i with
      | none => exact (h7 f a rfl).elim
      | some i =>
        obtain ⟨tgt, hh⟩ := i
        cases hh with
        | none => exact (h8 tgt f a rfl).elim
        | some hh => obtain ⟨x, y, hp⟩ := hh; exact (h9 tgt x y hp f a rfl).elim
    | decCall a b f c k => exact (h10 a b f c k rfl).elim
    | _ => simp [gwOnly]

theorem cW_of_ptW {g : MlS} (h : ptW.contains g = false) : cW.contains g = false := by
  simp only [ptW, cW, List.contains_append, Bool.or_eq_false_iff] at h ⊢
  exact h.1

theorem ptAll_gwOnly : ∀ f, ptAllNames.contains f = true → ∀ ps b rs, guestCode f = some (ps, b, rs) →
    gwOnly cW ptAllNames b = true := by
  intro f hf ps b rs hcode
  simp only [ptAllNames, List.contains_append, Bool.or_eq_true] at hf
  rcases hf with hf | hf
  · have h := closed_of_entries (chk := fun S b => gwOnly pmW S b) (fns := glAll) glAll_valid glAll_ok f
      (by rw [glAll_names]; exact hf) ps b rs hcode
    rw [glAll_names] at h
    refine gwOnly_mono (fun g hg => ?_) (fun f' hf' => ?_) b h
    · simp [cW, hg]
    · simp [ptAllNames, hf']
  · have hf' : f ∈ ptExtra.map Prod.fst := List.contains_iff_mem.mp hf
    obtain ⟨e, he, rfl⟩ := List.mem_map.mp hf'
    rw [ptExtra_valid e he] at hcode
    have hb : e.2.2.1 = b := by rw [Option.some.inj hcode]
    rw [← hb]
    exact List.all_eq_true.mp ptExtra_ok e he

/-- **Every function of `ptAllNames` keeps every global outside `cW`.** -/
theorem funSpec_pt_gw (hC : X.code.lookup = guestCode) {g : MlS} (hg : cW.contains g = false) {f : MlS}
    (hf : ptAllNames.contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) := by
  refine funSpec_gw (S := ptAllNames) (g := g) ?_ hf
  rw [hC]
  intro f' hf' ps b rs hcode
  exact gwFree_of_only hg b (ptAll_gwOnly f' hf' ps b rs hcode)

theorem funSpec_pt_gw_all (hC : X.code.lookup = guestCode) {f : MlS} (hf : ptAllNames.contains f = true) :
    FunSpec σ X f (fun _ s _ t => ∀ g, cW.contains g = false → t.globals.lookup g = s.globals.lookup g) :=
  fun vs body callee rs hl s hs hloc r hr g hg => funSpec_pt_gw hC hg hf vs body callee rs hl s hs hloc r hr

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.funSpec_pt_gw
