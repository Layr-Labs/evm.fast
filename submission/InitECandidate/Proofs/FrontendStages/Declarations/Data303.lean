import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify287
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body303_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 18#64)

def body303_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body303_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 1#64)) body303_0 body303_1

def body303_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")])

def body303_4 : Prog (BitVec 64) :=
.seq body303_2 body303_3

def body303_5 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body303_4

def originalData303 : Decl (BitVec 64) :=
.function { name := "tx_list_item", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one)], body := body303_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData303 : Decl (BitVec 64) :=
.function { name := "tx_list_item", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one)], body := body303_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original303 := Pancake.PanLang.declToHOL originalData303
def simplified303 := Pancake.PanLang.declToHOL simplifiedData303
end InitECandidate.Proofs.FrontendStages.Declarations
