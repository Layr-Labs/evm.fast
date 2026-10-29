import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data630
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate607
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody630_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.op Flapjack.BinOp.sub
                [Flapjack.Exp.op Flapjack.BinOp.sub
                    [Flapjack.Exp.var Flapjack.VarKind.local "nbytes", Flapjack.Exp.const 1#64],
                  Flapjack.Exp.var Flapjack.VarKind.local "i"],
              Flapjack.Exp.const 8#64],
          Flapjack.Exp.var Flapjack.VarKind.local "bl"],
      Flapjack.Exp.const 1#64])

def globalBody630_1 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody630_0

def globalBody630_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody630_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 0#64)) globalBody630_1 globalBody630_2

def globalBody630_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody630_5 : Prog (BitVec 64) :=
.seq globalBody630_3 globalBody630_4

def globalBody630_6 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"])) globalBody630_5

def globalBody630_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nbytes")) globalBody630_6

def globalBody630_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64])

def globalBody630_9 : Prog (BitVec 64) :=
.seq globalBody630_7 globalBody630_8

def globalBody630_10 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody630_9

def globalData630 : Decl (BitVec 64) :=
.function { name := "be_top_bit", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("nbytes", Flapjack.Shape.one)], body := globalBody630_10, returnShape := (Flapjack.Shape.one) }
def globalOutput630 := Pancake.PanLang.declToHOL globalData630
end InitECandidate.Proofs.FrontendStages.Declarations
