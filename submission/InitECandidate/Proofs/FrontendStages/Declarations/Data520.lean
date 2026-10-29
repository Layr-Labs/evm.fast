import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify504
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body520_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 145#64],
      Flapjack.Exp.const 255#64])

def body520_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body520_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 90#64) (Flapjack.Exp.var Flapjack.VarKind.local "x"),
      Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 128#64)])) body520_0 body520_1

def body520_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 10#64)

def body520_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body520_5 : Prog (BitVec 64) :=
.seq body520_3 body520_4

def body520_6 : Prog (BitVec 64) :=
.seq body520_2 body520_5

def body520_7 : Prog (BitVec 64) :=
.seq body520_2 body520_3

def body520_8 : Prog (BitVec 64) :=
.seq body520_7 body520_4

def originalData520 : Decl (BitVec 64) :=
.function { name := "decode_single", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body520_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData520 : Decl (BitVec 64) :=
.function { name := "decode_single", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body520_8, returnShape := (Flapjack.Shape.one) }
def original520 := Pancake.PanLang.declToHOL originalData520
def simplified520 := Pancake.PanLang.declToHOL simplifiedData520
end InitECandidate.Proofs.FrontendStages.Declarations
