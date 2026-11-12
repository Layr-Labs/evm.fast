import InitECandidate.Solver.MemSafe.Eb.GlAll
import InitECandidate.Solver.MemSafe.Eb.Hyp
import InitECandidate.Solver.MemSafe.Ptx.PtGw

/-! Assembly of the generated global-keep checks: `funSpec_{tab,bal,sft,puc,pt}_gw`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0


namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Ptx (gwOnly pmW pmNames gwFree_of_only tgtW glAll glAll_ok glAll_valid glAll_names gwOnly_mono)

variable {σ : Type} {X : Ctx 64}

def tabAll : EntryList := tabChunk0 ++ tabChunk1 ++ tabChunk2 ++ tabChunk3 ++ tabChunk4 ++ tabChunk5 ++ tabChunk6
theorem tabAll_ok : tabAll.all (fun e => gwOnly tabW tabNames e.2.2.1) = true := by
  simp only [tabAll, List.all_append, tabc0_ok, tabc1_ok, tabc2_ok, tabc3_ok, tabc4_ok, tabc5_ok, tabc6_ok, Bool.and_self]
theorem tabAll_valid : ∀ e ∈ tabAll, guestCode e.1 = some e.2 := by
  intro e he
  simp only [tabAll, List.mem_append] at he
  rcases he with ((((((h | h) | h) | h) | h) | h) | h)
  · exact tabc0_valid e h
  · exact tabc1_valid e h
  · exact tabc2_valid e h
  · exact tabc3_valid e h
  · exact tabc4_valid e h
  · exact tabc5_valid e h
  · exact tabc6_valid e h
theorem tabAll_names : tabAll.map Prod.fst = tabExtraNames := by rfl

def balAll : EntryList := balChunk0
theorem balAll_ok : balAll.all (fun e => gwOnly balW balNames e.2.2.1) = true := by
  simp only [balAll, List.all_append, balc0_ok, Bool.and_self]
theorem balAll_valid : ∀ e ∈ balAll, guestCode e.1 = some e.2 := by
  intro e he
  simp only [balAll] at he
  exact balc0_valid e he
theorem balAll_names : balAll.map Prod.fst = balExtraNames := by rfl

def sftAll : EntryList := sftChunk0
theorem sftAll_ok : sftAll.all (fun e => gwOnly sftW sftNames e.2.2.1) = true := by
  simp only [sftAll, List.all_append, sftc0_ok, Bool.and_self]
theorem sftAll_valid : ∀ e ∈ sftAll, guestCode e.1 = some e.2 := by
  intro e he
  simp only [sftAll] at he
  exact sftc0_valid e he
theorem sftAll_names : sftAll.map Prod.fst = sftExtraNames := by rfl

def pucAll : EntryList := pucChunk0
theorem pucAll_ok : pucAll.all (fun e => gwOnly pucW pucNames e.2.2.1) = true := by
  simp only [pucAll, List.all_append, pucc0_ok, Bool.and_self]
theorem pucAll_valid : ∀ e ∈ pucAll, guestCode e.1 = some e.2 := by
  intro e he
  simp only [pucAll] at he
  exact pucc0_valid e he
theorem pucAll_names : pucAll.map Prod.fst = pucExtraNames := by rfl

def ptAll : EntryList := ptChunk0 ++ ptChunk1 ++ ptChunk2
theorem ptAll_ok : ptAll.all (fun e => gwOnly ptW ptNames e.2.2.1) = true := by
  simp only [ptAll, List.all_append, ptc0_ok, ptc1_ok, ptc2_ok, Bool.and_self]
theorem ptAll_valid : ∀ e ∈ ptAll, guestCode e.1 = some e.2 := by
  intro e he
  simp only [ptAll, List.mem_append] at he
  rcases he with ((h | h) | h)
  · exact ptc0_valid e h
  · exact ptc1_valid e h
  · exact ptc2_valid e h
theorem ptAll_names : ptAll.map Prod.fst = ptExtraNames := by rfl


/-- Direct groups: every function of the closure keeps the globals outside the group's write set. -/
theorem gw_direct {W S : List MlS} {E : EntryList} (hn : E.map Prod.fst = S) (hv : ∀ e ∈ E, guestCode e.1 = some e.2)
    (hok : E.all (fun e => gwOnly W S e.2.2.1) = true) (hC : X.code.lookup = guestCode) {g : MlS} (hg : W.contains g = false)
    {f : MlS} (hf : S.contains f = true) : FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) := by
  refine funSpec_gw (S := S) (g := g) ?_ hf
  rw [hC]
  intro f' hf' ps b rs hcode
  have := closed_of_entries (chk := fun S b => gwOnly W S b) (fns := E) hv (by rw [hn]; exact hok) f'
    (by rw [hn]; exact hf') ps b rs hcode
  rw [hn] at this
  exact gwFree_of_only hg b this

/-- Lifted groups: the pm closure from `Ptx.funSpec_pm_gw` and the extra functions directly. -/
theorem gw_lifted {W : List MlS} {Ex : List MlS} {E : EntryList} (hn : E.map Prod.fst = Ex)
    (hv : ∀ e ∈ E, guestCode e.1 = some e.2) (hok : E.all (fun e => gwOnly W (pmNames ++ Ex) e.2.2.1) = true)
    (hW : ∀ g, g ∈ pmW → g ∈ W) (hC : X.code.lookup = guestCode) {g : MlS} (hg : W.contains g = false)
    {f : MlS} (hf : (pmNames ++ Ex).contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) := by
  refine funSpec_gw (S := pmNames ++ Ex) (g := g) ?_ hf
  rw [hC]
  intro f' hf' ps b rs hcode
  apply gwFree_of_only hg
  simp only [List.contains_append, Bool.or_eq_true] at hf'
  rcases hf' with hf' | hf'
  · have := closed_of_entries (chk := fun S b => gwOnly pmW S b) (fns := glAll) glAll_valid glAll_ok f'
      (by rw [glAll_names]; exact hf') ps b rs hcode
    rw [glAll_names] at this
    refine gwOnly_mono hW (fun f'' hf'' => ?_) b this
    simp [List.mem_append, hf'']
  · have hf'' : f' ∈ Ex := List.contains_iff_mem.mp hf'
    rw [← hn] at hf''
    obtain ⟨e, he, rfl⟩ := List.mem_map.mp hf''
    rw [hv e he] at hcode
    have hb : e.2.2.1 = b := by rw [Option.some.inj hcode]
    rw [← hb]
    exact List.all_eq_true.mp hok e he

theorem funSpec_tab_gw (hC : X.code.lookup = guestCode) {g : MlS} (hg : tabW.contains g = false) {f : MlS}
    (hf : tabNames.contains f = true) : FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) :=
  gw_direct tabAll_names tabAll_valid tabAll_ok hC hg hf

theorem funSpec_bal_gw (hC : X.code.lookup = guestCode) {g : MlS} (hg : balW.contains g = false) {f : MlS}
    (hf : balNames.contains f = true) : FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) :=
  gw_direct balAll_names balAll_valid balAll_ok hC hg hf

theorem funSpec_sft_gw (hC : X.code.lookup = guestCode) {g : MlS} (hg : sftW.contains g = false) {f : MlS}
    (hf : sftNames.contains f = true) : FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) :=
  gw_direct sftAll_names sftAll_valid sftAll_ok hC hg hf

theorem funSpec_puc_gw (hC : X.code.lookup = guestCode) {g : MlS} (hg : pucW.contains g = false) {f : MlS}
    (hf : pucNames.contains f = true) : FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) :=
  gw_lifted pucAll_names pucAll_valid pucAll_ok (by decide) hC hg hf

theorem funSpec_pt_gw (hC : X.code.lookup = guestCode) {g : MlS} (hg : ptW.contains g = false) {f : MlS}
    (hf : ptNames.contains f = true) : FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) :=
  gw_lifted ptAll_names ptAll_valid ptAll_ok (by decide) hC hg hf

end InitECandidate.Solver.MemSafe.Eb

#print axioms InitECandidate.Solver.MemSafe.Eb.funSpec_pt_gw
#print axioms InitECandidate.Solver.MemSafe.Eb.funSpec_tab_gw
