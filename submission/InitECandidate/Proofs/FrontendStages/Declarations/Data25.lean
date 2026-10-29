import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body25_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bswap64" [Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "p")]

def body25_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body25_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body25_0 body25_1

def body25_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p"))
              (Flapjack.Exp.const 24#64),
            Flapjack.Exp.shift Flapjack.Shift.lsl
              (Flapjack.Exp.loadByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64]))
              (Flapjack.Exp.const 16#64),
            Flapjack.Exp.shift Flapjack.Shift.lsl
              (Flapjack.Exp.loadByte
                (Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 2#64]))
              (Flapjack.Exp.const 8#64),
            Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 3#64])])
        (Flapjack.Exp.const 32#64),
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4#64]))
            (Flapjack.Exp.const 24#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4#64, Flapjack.Exp.const 1#64]))
            (Flapjack.Exp.const 16#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl
            (Flapjack.Exp.loadByte
              (Flapjack.Exp.op Flapjack.BinOp.add
                [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4#64, Flapjack.Exp.const 2#64]))
            (Flapjack.Exp.const 8#64),
          Flapjack.Exp.loadByte
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4#64, Flapjack.Exp.const 3#64])]])

def body25_4 : Prog (BitVec 64) :=
.seq body25_2 body25_3

def originalData25 : Decl (BitVec 64) :=
.function { name := "ld_be64", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body25_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData25 : Decl (BitVec 64) :=
.function { name := "ld_be64", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body25_4, returnShape := (Flapjack.Shape.one) }
def original25 := Pancake.PanLang.declToHOL originalData25
def simplified25 := Pancake.PanLang.declToHOL simplifiedData25
end InitECandidate.Proofs.FrontendStages.Declarations
