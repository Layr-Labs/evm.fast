import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data296
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody296_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 15#64)

def globalBody296_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody296_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) globalBody296_0 globalBody296_1

def globalBody296_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")])

def globalBody296_4 : Prog (BitVec 64) :=
.seq globalBody296_2 globalBody296_3

def globalBody296_5 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody296_4

def globalData296 : Decl (BitVec 64) :=
.function { name := "tx_bytes_item", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one)], body := globalBody296_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput296 := Pancake.PanLang.declToHOL globalData296
end InitECandidate.Proofs.FrontendStages.Declarations
