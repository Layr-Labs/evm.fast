import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data328
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate312
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody328_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 64#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 17#64, Flapjack.Exp.const 33#64],
      Flapjack.Exp.const 30#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "al", Flapjack.Exp.var Flapjack.VarKind.local "au",
      Flapjack.Exp.var Flapjack.VarKind.local "bh"])

def globalBody328_1 : Prog (BitVec 64) :=
.dec ("bh") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul
  [Flapjack.Exp.const 33#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])]) globalBody328_0

def globalBody328_2 : Prog (BitVec 64) :=
.decCall ("au") (Flapjack.Shape.one) ("auth_list_payload_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 272#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64])]) globalBody328_1

def globalBody328_3 : Prog (BitVec 64) :=
.decCall ("al") (Flapjack.Shape.one) ("access_list_payload_len") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64])]) globalBody328_2

def globalData328 : Decl (BitVec 64) :=
.function { name := "tx_encode_bound", inline := false, exported := false, params := [("tx", Flapjack.Shape.one)], body := globalBody328_3, returnShape := (Flapjack.Shape.one) }
def globalOutput328 := Pancake.PanLang.declToHOL globalData328
end InitECandidate.Proofs.FrontendStages.Declarations
