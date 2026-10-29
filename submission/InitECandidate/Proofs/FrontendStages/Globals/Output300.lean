import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data300
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate283
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody300_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 15#64)

def globalBody300_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody300_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) globalBody300_0 globalBody300_1

def globalBody300_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")])

def globalBody300_4 : Prog (BitVec 64) :=
.seq globalBody300_2 globalBody300_3

def globalBody300_5 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody300_4

def globalData300 : Decl (BitVec 64) :=
.function { name := "tx_bytes_item", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one)], body := globalBody300_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput300 := Pancake.PanLang.declToHOL globalData300
end InitECandidate.Proofs.FrontendStages.Declarations
