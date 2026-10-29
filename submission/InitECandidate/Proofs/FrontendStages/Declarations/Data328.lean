import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify312
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body328_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 64#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 17#64, Flapjack.Exp.const 33#64],
      Flapjack.Exp.const 30#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "al", Flapjack.Exp.var Flapjack.VarKind.local "au",
      Flapjack.Exp.var Flapjack.VarKind.local "bh"])

def body328_1 : Prog (BitVec 64) :=
.dec ("bh") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.const 33#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])]) body328_0

def body328_2 : Prog (BitVec 64) :=
.decCall ("au") (Flapjack.Shape.one) ("auth_list_payload_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 272#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64])]) body328_1

def body328_3 : Prog (BitVec 64) :=
.decCall ("al") (Flapjack.Shape.one) ("access_list_payload_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64])]) body328_2

def originalData328 : Decl (BitVec 64) :=
.function { name := "tx_encode_bound", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body328_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData328 : Decl (BitVec 64) :=
.function { name := "tx_encode_bound", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := body328_3, returnShape := (Flapjack.Shape.one) }
def original328 := Pancake.PanLang.declToHOL originalData328
def simplified328 := Pancake.PanLang.declToHOL simplifiedData328
end InitECandidate.Proofs.FrontendStages.Declarations
