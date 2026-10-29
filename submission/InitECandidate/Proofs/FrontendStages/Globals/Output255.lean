import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data255
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody255_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody255_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody255_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"))
  (Flapjack.Exp.const 0#64)) globalBody255_0 globalBody255_1

def globalBody255_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64,
      Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r")),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"), Flapjack.Exp.const 8#64])])

def globalBody255_4 : Prog (BitVec 64) :=
.seq globalBody255_2 globalBody255_3

def globalBody255_5 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "db", Flapjack.Exp.var Flapjack.VarKind.local "hash"]) globalBody255_4

def globalData255 : Decl (BitVec 64) :=
.function { name := "nodedb_lookup", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("hash", Flapjack.Shape.one)], body := globalBody255_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput255 := Pancake.PanLang.declToHOL globalData255
end InitECandidate.Proofs.FrontendStages.Declarations
