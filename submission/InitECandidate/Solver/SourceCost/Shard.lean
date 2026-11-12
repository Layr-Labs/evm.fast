import InitECandidate.Solver.SourceCost.Manual

/-!
# Sharded kernel check of the cost table

`tblStep2` is `tblStepIn` with the function's parameters and body supplied directly, so
that each shard only translates its own functions, and with the manual entries
`manualEntries` (`Manual.lean`) taking precedence over the analyzer. Soundness needs, for
every supplied triple, that it is the guest's code entry (`PairValid`), and that the manual
entries are sound (`ManualListSound manualEntries`, proved in `ManualSound.lean`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL DeclHOL FunDeclHOL functionsHOL
  progToHOL paramToHOL)
open Flapjack.Basis.Pure.MlString

variable {σ : Type}

/-- A function's name, parameters and translated body. -/
abbrev ShardPair := MlS × List (MlS × ShapeHOL) × ProgHOL 64

def tblStep2 (st : TblState) (p : ShardPair) : TblState :=
  tblStepM manualEntries st p.1 p.2.1 p.2.2

def PairValid (p : ShardPair) : Prop := ∃ rs, guestCode p.1 = some (p.2.1, p.2.2, rs)

theorem tblStep2_sound (hms : ManualListSound manualEntries) {X : Ctx 64}
    (hC : X.code.lookup = guestCode) (hX : DomBounded X) (st : TblState)
    (p : ShardPair) (hp : PairValid p) (h : StateSound σ X st) :
    StateSound σ X (tblStep2 st p) := by
  obtain ⟨rs, hf⟩ := hp
  exact tblStepM_sound hms hC hX st hf h

theorem fold2_sound (hms : ManualListSound manualEntries) {X : Ctx 64}
    (hC : X.code.lookup = guestCode) (hX : DomBounded X) :
    ∀ (pairs : List ShardPair), (∀ p ∈ pairs, PairValid p) →
      ∀ st, StateSound σ X st → StateSound σ X (pairs.foldl tblStep2 st)
  | [], _, st, h => h
  | p :: rest, hall, st, h => by
      rw [List.foldl_cons]
      exact fold2_sound hms hC hX rest (fun q hq => hall q (List.mem_cons_of_mem _ hq)) _
        (tblStep2_sound hms hC hX st p (hall p List.mem_cons_self) h)

/-- Name, parameters and translated body of a guest declaration. -/
def declPair (d : Flapjack.Decl (BitVec 64)) : ShardPair :=
  match d with
  | .function fd => (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body)
  | _ => (ofString "", [], .skip)

theorem declPair_valid {d : Flapjack.Decl (BitVec 64)} (hd : d ∈ Guest.Software.guestAst)
    (hf : ∃ fd, d = .function fd) : PairValid (declPair d) := by
  obtain ⟨fd, rfl⟩ := hf
  exact ⟨_, guestCode_function hd⟩

end InitECandidate.Solver.SourceCost
