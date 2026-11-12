import InitECandidate.Solver.MemSafe.Wg.Core

/-!
# Wg: the globals outside `WgW` are kept (`GwK`) by `process_withdrawals`, `requests_append`, `process_general_purpose_requests`

The closure `wgNames` is the table group, the `process_unchecked_system_transaction` group and the four functions (with `u256_mul`,
`mul64x64`); every body writes only globals of `pucW` and calls only names of `wgNames`. The two existing groups are lifted by `gwOnly_mono`.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb
open InitECandidate.Solver.MemSafe.Ptx (gwOnly pmW pmNames gwFree_of_only gwOnly_mono glAll glAll_ok glAll_valid glAll_names)

def wgExtraNames : List MlS :=
  [nm "u256_mul", nm "mul64x64", nm "process_withdrawals", nm "requests_append", nm "process_general_purpose_requests"]

def wgChunk : EntryList :=
  [fnEntry Guest.Software.guestFn_u256_mul,
   fnEntry Guest.Software.guestFn_mul64x64,
   fnEntry Guest.Software.guestFn_process_withdrawals,
   fnEntry Guest.Software.guestFn_requests_append,
   fnEntry Guest.Software.guestFn_process_general_purpose_requests]

def wgNames : List MlS := tabNames ++ pucNames ++ wgExtraNames

theorem wgc_ok : wgChunk.all (fun e => gwOnly pucW wgNames e.2.2.1) = true := by
  conv => lhs; cbv

theorem wgc_valid : ∀ e ∈ wgChunk, guestCode e.1 = some e.2 := by
  intro e he
  simp only [wgChunk, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 60) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 59) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 875) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 876) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 877) (by decide)) ⟨_, rfl⟩

theorem wgc_names : wgChunk.map Prod.fst = wgExtraNames := by rfl

theorem tabW_sub : ∀ g, g ∈ tabW → g ∈ pucW := by decide
theorem pmW_sub : ∀ g, g ∈ pmW → g ∈ pucW := by decide

variable {σ : Type} {X : Ctx 64}

theorem funSpec_wg_gw (hC : X.code.lookup = guestCode) {g : MlS} (hg : pucW.contains g = false) {f : MlS}
    (hf : wgNames.contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g) := by
  refine funSpec_gw (S := wgNames) (g := g) ?_ hf
  rw [hC]
  intro f' hf' ps b rs hcode
  apply gwFree_of_only hg
  simp only [wgNames, List.contains_append, Bool.or_eq_true] at hf'
  rcases hf' with (hf' | hf') | hf'
  · -- the table group
    have := closed_of_entries (chk := fun S b => gwOnly tabW S b) (fns := tabAll) tabAll_valid tabAll_ok f'
      (by rw [tabAll_names]; exact hf') ps b rs hcode
    rw [tabAll_names] at this
    refine gwOnly_mono tabW_sub (fun f'' hf'' => ?_) b this
    simp [wgNames, tabNames, List.mem_append, hf'']
  · -- the `process_unchecked_system_transaction` group: the pm closure and the extra functions
    simp only [pucNames, List.contains_append, Bool.or_eq_true] at hf'
    rcases hf' with hf' | hf'
    · have := closed_of_entries (chk := fun S b => gwOnly pmW S b) (fns := glAll) glAll_valid glAll_ok f'
        (by rw [glAll_names]; exact hf') ps b rs hcode
      rw [glAll_names] at this
      refine gwOnly_mono pmW_sub (fun f'' hf'' => ?_) b this
      simp [wgNames, pucNames, List.mem_append, hf'']
    · have hf'' : f' ∈ pucExtraNames := List.contains_iff_mem.mp hf'
      rw [← pucAll_names] at hf''
      obtain ⟨e, he, rfl⟩ := List.mem_map.mp hf''
      rw [pucAll_valid e he] at hcode
      have hb : e.2.2.1 = b := by rw [Option.some.inj hcode]
      rw [← hb]
      refine gwOnly_mono (fun g hg => hg) (fun f'' hf'' => ?_) _ (List.all_eq_true.mp pucAll_ok e he)
      simp only [pucNames, List.mem_append] at hf''
      simp only [wgNames, pucNames, List.mem_append]
      tauto
  · have hf'' : f' ∈ wgExtraNames := List.contains_iff_mem.mp hf'
    rw [← wgc_names] at hf''
    obtain ⟨e, he, rfl⟩ := List.mem_map.mp hf''
    rw [wgc_valid e he] at hcode
    have hb : e.2.2.1 = b := by rw [Option.some.inj hcode]
    rw [← hb]
    exact List.all_eq_true.mp wgc_ok e he

theorem gwk_wg {f : MlS} (hf : wgNames.contains f = true) : GwK (σ := σ) f (fun g => pucW.contains g = true) :=
  gwK_of fun g hg => funSpec_wg_gw guestCtx_code (by simpa using hg) hf

/-! ## `u256_mul` writes no global -/

def mulNames : List MlS := [nm "u256_mul", nm "mul64x64"]

def mulChunk : EntryList :=
  [fnEntry Guest.Software.guestFn_u256_mul, fnEntry Guest.Software.guestFn_mul64x64]

theorem mulc_ok : mulChunk.all (fun e => gwOnly [] mulNames e.2.2.1) = true := by
  conv => lhs; cbv

theorem mulc_valid : ∀ e ∈ mulChunk, guestCode e.1 = some e.2 := by
  intro e he
  simp only [mulChunk, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 60) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 59) (by decide)) ⟨_, rfl⟩

theorem gwk_mul : GwK (σ := σ) (nm "u256_mul") (fun _ => False) :=
  gwK_of fun g _ => gw_direct (W := []) (S := mulNames) (E := mulChunk) rfl mulc_valid mulc_ok guestCtx_code
    (by simp) (by decide)

end InitECandidate.Solver.MemSafe.Wg
