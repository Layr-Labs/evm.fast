import InitECandidate.Solver.MemSafe.BalEnc.Main
import InitECandidate.Solver.MemSafe.BalEnc.Gen
import InitECandidate.Solver.MemSafe.Bal.IdxAcctCode

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`: the code, split into the mutator phase and the encoding phase

`bblBody = phase1 phase2`; `phase2` starts at `var tmp = alloc(64)`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def gE (g : String) : ExpHOL 64 := .var .global (nm g)

def cSr : MlS := nm "sr"
def cCap : MlS := nm "cap"
def cI : MlS := nm "i"
def cS : MlS := nm "s"
def cAr : MlS := nm "ar"
def cS2 : MlS := nm "s2"
def cTmp : MlS := nm "tmp"
def cAddrs : MlS := nm "addrs"
def cTotal : MlS := nm "total"
def cM : MlS := nm "m"
def cAd : MlS := nm "ad"
def cSc : MlS := nm "sc"
def cScap : MlS := nm "scap"
def cJ : MlS := nm "j"
def cE : MlS := nm "e"
def cCl : MlS := nm "cl"
def cCn : MlS := nm "cn"
def cCp : MlS := nm "cp"
def cBuf : MlS := nm "buf"
def cP : MlS := nm "p"
def cM2 : MlS := nm "m2"
def cW : MlS := nm "w"
def cPayload : MlS := nm "payload"
def cHl : MlS := nm "hl"
def cStart : MlS := nm "start"

/-- The body of the first loop: block-level storage reads. -/
def loopSRBody : ProgHOL 64 :=
  .decCall cS (.comb [.one, .one, .one]) (nm "htab_item") [lv cSr, lv cI]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv cS)) (cw 0))
        (.call (some (none, none)) (nm "add_storage_read")
          [.rfield 1 (lv cS), .op .add [.rfield 1 (lv cS), cw 20]])
        .skip)
      (.assign .local cI (.op .add [lv cI, cw 1])))

def loopSR : ProgHOL 64 := .while (.cmp .less (lv cI) (lv cCap)) loopSRBody

/-- The body of the second loop: block-level account reads. -/
def loopARBody : ProgHOL 64 :=
  .decCall cS2 (.comb [.one, .one, .one]) (nm "htab_item") [lv cAr, lv cI]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv cS2)) (cw 0))
        (.call (some (none, none)) (nm "add_touched_account") [.rfield 1 (lv cS2)])
        .skip)
      (.assign .local cI (.op .add [lv cI, cw 1])))

def loopAR : ProgHOL 64 := .while (.cmp .less (lv cI) (lv cCap)) loopARBody

/-- `addrs.0 + i * 24` -/
def keyE : ExpHOL 64 := .op .add [.rfield 0 (lv cAddrs), .panop .mul [lv cI, cw 24]]

/-- The inner loop over the storage-change table. -/
def loopSC : ProgHOL 64 :=
  .while (.cmp .less (lv cJ) (lv cScap))
    (.decCall cE (.comb [.one, .one, .one]) (nm "htab_item") [lv cSc, lv cJ]
      (.seq (.ite (.cmp .notEqual (.rfield 0 (lv cE)) (cw 0))
          (.assign .local cTotal (.op .add [lv cTotal,
            .panop .mul [.load .one (.op .add [.rfield 2 (lv cE), cw 8]), cw 48]]))
          .skip)
        (.assign .local cJ (.op .add [lv cJ, cw 1]))))

/-- The loop over the code changes. -/
def loopCode : ProgHOL 64 :=
  .while (.cmp .less (lv cJ) (lv cCn))
    (.seq (.assign .local cTotal (.op .add [lv cTotal, cw 32,
        .load .one (.op .add [lv cCp, .panop .mul [lv cJ, cw 24], cw 16])]))
      (.assign .local cJ (.op .add [lv cJ, cw 1])))

/-- The body of the size loop. -/
def sizeBody : ProgHOL 64 :=
  .decCall cM (.comb [.one, .one]) (nm "htab_get") [gE "bal_accounts", keyE]
    (.dec cAd .one (.rfield 1 (lv cM))
      (.seq (.assign .local cTotal (.op .add [lv cTotal, cw 128,
          .panop .mul [.load .one (.op .add [.load .one (.op .add [lv cAd, cw 8]), cw 24]), cw 40]]))
        (.seq (.assign .local cTotal (.op .add [lv cTotal,
            .panop .mul [.load .one (.op .add [.load .one (.op .add [lv cAd, cw 0]), cw 24]), cw 96]]))
          (.dec cSc .one (.load .one (.op .add [lv cAd, cw 0]))
            (.dec cScap .one (.load .one (.op .add [lv cSc, cw 24]))
              (.dec cJ .one (cw 0)
                (.seq loopSC
                  (.seq (.assign .local cTotal (.op .add [lv cTotal,
                      .panop .mul [.load .one (.op .add [.load .one (.op .add [lv cAd, cw 16]), cw 8]), cw 48]]))
                    (.seq (.assign .local cTotal (.op .add [lv cTotal,
                        .panop .mul [.load .one (.op .add [.load .one (.op .add [lv cAd, cw 24]), cw 8]), cw 24]]))
                      (.dec cCl .one (.load .one (.op .add [lv cAd, cw 32]))
                        (.dec cCn .one (.load .one (.op .add [lv cCl, cw 8]))
                          (.dec cCp .one (.load .one (.op .add [lv cCl, cw 0]))
                            (.seq (.assign .local cJ (cw 0))
                              (.seq loopCode (.assign .local cI (.op .add [lv cI, cw 1]))))))))))))))))

/-- The encoding loop. -/
def encLoop : ProgHOL 64 :=
  .while (.cmp .less (lv cI) (.rfield 1 (lv cAddrs)))
    (.decCall cM2 (.comb [.one, .one]) (nm "htab_get") [gE "bal_accounts", keyE]
      (.decCall cW .one (nm "bal_encode_account") [lv cP, keyE, .rfield 1 (lv cM2), lv cTmp]
        (.seq (.assign .local cP (.op .add [lv cP, lv cW]))
          (.assign .local cI (.op .add [lv cI, cw 1])))))

/-- From `var buf = alloc(total + 64)`. -/
def phase2c : ProgHOL 64 :=
  .decCall cBuf .one (nm "alloc") [.op .add [lv cTotal, cw 64]]
    (.dec cP .one (.op .add [lv cBuf, cw 9])
      (.seq (.assign .local cI (cw 0))
        (.seq encLoop
          (.dec cPayload .one (.op .sub [lv cP, .op .add [lv cBuf, cw 9]])
            (.decCall cHl .one (nm "rlp_list_header_len") [lv cPayload]
              (.dec cStart .one (.op .sub [.op .add [lv cBuf, cw 9], lv cHl])
                (.seq (.call (some (none, none)) (nm "rlp_encode_list_header") [lv cStart, lv cPayload])
                  (.return (.rstruct [lv cStart, .op .add [lv cHl, lv cPayload]])))))))))

/-- Phase 2: `tmp = alloc(64)` to the end. -/
def phase2 : ProgHOL 64 :=
  .decCall cTmp .one (nm "alloc") [cw 64]
    (.decCall cAddrs (.comb [.one, .one]) (nm "htab_keys") [gE "bal_accounts"]
      (.seq (.call (some (none, none)) (nm "sort_elems")
          [.rfield 0 (lv cAddrs), .rfield 1 (lv cAddrs), cw 24, cw 1, lv cTmp])
        (.dec cTotal .one (cw 1024)
          (.seq (.assign .local cI (cw 0))
            (.seq (.while (.cmp .less (lv cI) (.rfield 1 (lv cAddrs))) sizeBody) phase2c)))))

/-- Phase 1 then `k`. -/
def phase1 (k : ProgHOL 64) : ProgHOL 64 :=
  .dec cSr .one (.load .one (.op .add [gE "bs", cw 24]))
    (.dec cCap .one (.load .one (.op .add [lv cSr, cw 24]))
      (.dec cI .one (cw 0)
        (.seq loopSR
          (.dec cAr .one (.load .one (.op .add [gE "bs", cw 8]))
            (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
              (.seq (.assign .local cI (cw 0)) (.seq loopAR k)))))))

def bblBody : ProgHOL 64 := phase1 phase2

theorem code_build_block_access_list_rlp : guestCode (nm "build_block_access_list_rlp") =
    some ([], bblBody, .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_build_block_access_list_rlp =
      (nm "build_block_access_list_rlp", [], bblBody, .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 433) (by decide)) ⟨_, rfl⟩ h

end InitECandidate.Solver.MemSafe.BalEnc
