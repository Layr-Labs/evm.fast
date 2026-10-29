import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify431
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body447_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body447_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body447_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 23#64)) body447_0 body447_1

def body447_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body447_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "code"))
        (Flapjack.Exp.const 239#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 1#64]))
        (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 2#64]))
        (Flapjack.Exp.const 0#64))]) body447_3 body447_1

def body447_5 : Prog (BitVec 64) :=
.seq body447_4 body447_0

def body447_6 : Prog (BitVec 64) :=
.seq body447_2 body447_5

def body447_7 : Prog (BitVec 64) :=
.seq body447_2 body447_4

def body447_8 : Prog (BitVec 64) :=
.seq body447_7 body447_0

def originalData447 : Decl (BitVec 64) :=
.function { name := "is_valid_delegation", inline := false, exported := false, params := [("code", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body447_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData447 : Decl (BitVec 64) :=
.function { name := "is_valid_delegation", inline := false, exported := false, params := [("code", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body447_8, returnShape := (Flapjack.Shape.one) }
def original447 := Pancake.PanLang.declToHOL originalData447
def simplified447 := Pancake.PanLang.declToHOL simplifiedData447
end InitECandidate.Proofs.FrontendStages.Declarations
