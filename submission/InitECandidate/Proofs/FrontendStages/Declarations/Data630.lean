import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify614
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body630_0 : Prog (BitVec 64) :=
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

def body630_1 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) body630_0

def body630_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body630_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 0#64)) body630_1 body630_2

def body630_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body630_5 : Prog (BitVec 64) :=
.seq body630_3 body630_4

def body630_6 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"])) body630_5

def body630_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nbytes")) body630_6

def body630_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64])

def body630_9 : Prog (BitVec 64) :=
.seq body630_7 body630_8

def body630_10 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body630_9

def originalData630 : Decl (BitVec 64) :=
.function { name := "be_top_bit", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("nbytes", Flapjack.Shape.one)], body := body630_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData630 : Decl (BitVec 64) :=
.function { name := "be_top_bit", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("nbytes", Flapjack.Shape.one)], body := body630_10, returnShape := (Flapjack.Shape.one) }
def original630 := Pancake.PanLang.declToHOL originalData630
def simplified630 := Pancake.PanLang.declToHOL simplifiedData630
end InitECandidate.Proofs.FrontendStages.Declarations
