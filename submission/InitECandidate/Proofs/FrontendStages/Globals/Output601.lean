import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data601
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate585
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody601_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "require_not_static" []

def globalBody601_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "cost"]

def globalBody601_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "saltv", Flapjack.Exp.var Flapjack.VarKind.local "salt"]

def globalBody601_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extend_memory"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def globalBody601_4 : Prog (BitVec 64) :=
.seq globalBody601_2 globalBody601_3

def globalBody601_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "compute_create2_contract_address"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "salt",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.load Flapjack.Shape.one
                (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
              Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "s"],
    Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "ca"]

def globalBody601_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def globalBody601_7 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody601_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "started") (Flapjack.Exp.const 0#64)) globalBody601_6 globalBody601_7

def globalBody601_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody601_10 : Prog (BitVec 64) :=
.seq globalBody601_8 globalBody601_9

def globalBody601_11 : Prog (BitVec 64) :=
.decCall ("started") (Flapjack.Shape.one) ("generic_create") ([Flapjack.Exp.var Flapjack.VarKind.local "endowment", Flapjack.Exp.var Flapjack.VarKind.local "ca",
  Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody601_10

def globalBody601_12 : Prog (BitVec 64) :=
.seq globalBody601_5 globalBody601_11

def globalBody601_13 : Prog (BitVec 64) :=
.decCall ("ca") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody601_12

def globalBody601_14 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "mstart"]) globalBody601_13

def globalBody601_15 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody601_14

def globalBody601_16 : Prog (BitVec 64) :=
.seq globalBody601_4 globalBody601_15

def globalBody601_17 : Prog (BitVec 64) :=
.decCall ("salt") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody601_16

def globalBody601_18 : Prog (BitVec 64) :=
.seq globalBody601_1 globalBody601_17

def globalBody601_19 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 12000#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 6#64, Flapjack.Exp.var Flapjack.VarKind.local "w"],
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "w"]],
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) globalBody601_18

def globalBody601_20 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("words_of") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody601_19

def globalBody601_21 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "mstart", Flapjack.Exp.var Flapjack.VarKind.local "msize"]) globalBody601_20

def globalBody601_22 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "msize"]) globalBody601_21

def globalBody601_23 : Prog (BitVec 64) :=
.decCall ("saltv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody601_22

def globalBody601_24 : Prog (BitVec 64) :=
.decCall ("msize") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody601_23

def globalBody601_25 : Prog (BitVec 64) :=
.decCall ("mstart") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody601_24

def globalBody601_26 : Prog (BitVec 64) :=
.decCall ("endowment") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) globalBody601_25

def globalBody601_27 : Prog (BitVec 64) :=
.seq globalBody601_0 globalBody601_26

def globalData601 : Decl (BitVec 64) :=
.function { name := "op_create2", inline := false, exported := false, params := [], body := globalBody601_27, returnShape := (Flapjack.Shape.one) }
def globalOutput601 := Pancake.PanLang.declToHOL globalData601
end InitECandidate.Proofs.FrontendStages.Declarations
