import InitECandidate.Solver.MemSafe.Inc.LogAppend
import InitECandidate.Solver.MemSafe.HtabEntries.LstPush

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `p + i * esz`. -/
def luAddr : ExpHOL 64 := .op .add [lv (nm "p"), .panop .mul [lv (nm "i"), lv (nm "esz")]]

def luLoop : ProgHOL 64 :=
  .while (.cmp .less (lv (nm "i")) (lv (nm "n")))
    (.seq (.ite (.cmp .equal (.load .one luAddr) (lv (nm "idx"))) (.return luAddr) .skip)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def luTail : ProgHOL 64 :=
  .decCall (nm "e") .one (nm "lst_push") [lv (nm "l"), lv (nm "esz")]
    (.seq (.store (lv (nm "e")) (lv (nm "idx"))) (.return (lv (nm "e"))))

def luBody : ProgHOL 64 :=
  .dec (nm "n") .one (lpLd 8)
    (.dec (nm "p") .one (lpLd 0)
      (.dec (nm "i") .one (cw 0) (.seq luLoop luTail)))

theorem entry_lst_upsert_idx : fnEntry Guest.Software.guestFn_lst_upsert_idx =
    (nm "lst_upsert_idx", [(nm "l", .one), (nm "esz", .one), (nm "idx", .one)], luBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_lst_upsert_idx : guestCode (nm "lst_upsert_idx") =
    some ([(nm "l", .one), (nm "esz", .one), (nm "idx", .one)], luBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 413) (by decide)) ⟨_, rfl⟩
    entry_lst_upsert_idx

def balX : List MlS := nm "lst_push" :: htabX

theorem noExc_balX (hX : X.code.lookup = guestCode) : NoExcTab σ X balX :=
  noExcTab_cons (noExc_htabX hX) (noExc_lst_push hX)

theorem xchk_lst_upsert_idx :
    xChk balX false (declPair Guest.Software.guestFn_lst_upsert_idx).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_lst_upsert_idx (hX : X.code.lookup = guestCode) : NoExc σ X (nm "lst_upsert_idx") :=
  noExc_of_pair (noExc_balX hX) hX (p := declPair Guest.Software.guestFn_lst_upsert_idx)
    (declPair_valid (List.getElem_mem (n := 413) (by decide)) ⟨_, rfl⟩) xchk_lst_upsert_idx

end InitECandidate.Solver.MemSafe.Bal
