import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data297
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody297_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 10#64)

def globalBody297_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody297_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) globalBody297_0 globalBody297_1

def globalBody297_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 11#64)

def globalBody297_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.loadByte (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it")))
  (Flapjack.Exp.const 0#64)) globalBody297_3 globalBody297_1

def globalBody297_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it"))) globalBody297_4 globalBody297_1

def globalBody297_6 : Prog (BitVec 64) :=
.seq globalBody297_2 globalBody297_5

def globalBody297_7 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 12#64)

def globalBody297_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "maxb")
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it"))) globalBody297_7 globalBody297_1

def globalBody297_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "maxb") (Flapjack.Exp.const 0#64)) globalBody297_8 globalBody297_1

def globalBody297_10 : Prog (BitVec 64) :=
.seq globalBody297_6 globalBody297_9

def globalBody297_11 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")])

def globalBody297_12 : Prog (BitVec 64) :=
.seq globalBody297_10 globalBody297_11

def globalBody297_13 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody297_12

def globalData297 : Decl (BitVec 64) :=
.function { name := "tx_scalar_item", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one), ("maxb", Flapjack.Shape.one)], body := globalBody297_13, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput297 := Pancake.PanLang.declToHOL globalData297
end InitECandidate.Proofs.FrontendStages.Declarations
