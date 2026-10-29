import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify509
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body525_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 2#64)

def body525_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body525_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "ntopics")) body525_0 body525_1

def body525_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cost" (Flapjack.Exp.const 18446744073709551615#64)

def body525_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "cost"), none)) "add_sat"
  [Flapjack.Exp.var Flapjack.VarKind.local "cost", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "dc")]

def body525_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "dc"))
  (Flapjack.Exp.const 0#64)) body525_3 body525_4

def body525_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.var Flapjack.VarKind.local "cost"]

def body525_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "u256_to_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "t",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "topics",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def body525_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body525_9 : Prog (BitVec 64) :=
.seq body525_7 body525_8

def body525_10 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body525_9

def body525_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntopics")) body525_10

def body525_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "extend_memory"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x")]

def body525_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "require_not_static" []

def body525_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "log_address",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
          Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 20#64]

def body525_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "log_address")

def body525_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "topics")

def body525_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ntopics")

def body525_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "data",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "s"],
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body525_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "data")

def body525_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body525_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "log_append"
  [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.var Flapjack.VarKind.local "log"]

def body525_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body525_23 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body525_24 : Prog (BitVec 64) :=
.seq body525_22 body525_23

def body525_25 : Prog (BitVec 64) :=
.seq body525_21 body525_24

def body525_26 : Prog (BitVec 64) :=
.seq body525_20 body525_25

def body525_27 : Prog (BitVec 64) :=
.seq body525_19 body525_26

def body525_28 : Prog (BitVec 64) :=
.seq body525_18 body525_27

def body525_29 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) body525_28

def body525_30 : Prog (BitVec 64) :=
.decCall ("data") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body525_29

def body525_31 : Prog (BitVec 64) :=
.seq body525_17 body525_30

def body525_32 : Prog (BitVec 64) :=
.seq body525_16 body525_31

def body525_33 : Prog (BitVec 64) :=
.seq body525_15 body525_32

def body525_34 : Prog (BitVec 64) :=
.seq body525_14 body525_33

def body525_35 : Prog (BitVec 64) :=
.decCall ("log_address") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body525_34

def body525_36 : Prog (BitVec 64) :=
.decCall ("log") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body525_35

def body525_37 : Prog (BitVec 64) :=
.seq body525_13 body525_36

def body525_38 : Prog (BitVec 64) :=
.seq body525_12 body525_37

def body525_39 : Prog (BitVec 64) :=
.seq body525_11 body525_38

def body525_40 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body525_39

def body525_41 : Prog (BitVec 64) :=
.decCall ("topics") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "ntopics", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64]]) body525_40

def body525_42 : Prog (BitVec 64) :=
.seq body525_6 body525_41

def body525_43 : Prog (BitVec 64) :=
.seq body525_5 body525_42

def body525_44 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 375#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.const 375#64, Flapjack.Exp.var Flapjack.VarKind.local "ntopics"]],
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) body525_43

def body525_45 : Prog (BitVec 64) :=
.decCall ("dc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]) body525_44

def body525_46 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "size"]) body525_45

def body525_47 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "size"]) body525_46

def body525_48 : Prog (BitVec 64) :=
.seq body525_2 body525_47

def body525_49 : Prog (BitVec 64) :=
.decCall ("size") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body525_48

def body525_50 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body525_49

def body525_51 : Prog (BitVec 64) :=
.seq body525_5 body525_6

def body525_52 : Prog (BitVec 64) :=
.seq body525_11 body525_12

def body525_53 : Prog (BitVec 64) :=
.seq body525_52 body525_13

def body525_54 : Prog (BitVec 64) :=
.seq body525_14 body525_15

def body525_55 : Prog (BitVec 64) :=
.seq body525_54 body525_16

def body525_56 : Prog (BitVec 64) :=
.seq body525_55 body525_17

def body525_57 : Prog (BitVec 64) :=
.seq body525_18 body525_19

def body525_58 : Prog (BitVec 64) :=
.seq body525_57 body525_20

def body525_59 : Prog (BitVec 64) :=
.seq body525_58 body525_21

def body525_60 : Prog (BitVec 64) :=
.seq body525_59 body525_22

def body525_61 : Prog (BitVec 64) :=
.seq body525_60 body525_23

def body525_62 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) body525_61

def body525_63 : Prog (BitVec 64) :=
.decCall ("data") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64]]) body525_62

def body525_64 : Prog (BitVec 64) :=
.seq body525_56 body525_63

def body525_65 : Prog (BitVec 64) :=
.decCall ("log_address") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body525_64

def body525_66 : Prog (BitVec 64) :=
.decCall ("log") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body525_65

def body525_67 : Prog (BitVec 64) :=
.seq body525_53 body525_66

def body525_68 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body525_67

def body525_69 : Prog (BitVec 64) :=
.decCall ("topics") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "ntopics", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64]]) body525_68

def body525_70 : Prog (BitVec 64) :=
.seq body525_51 body525_69

def body525_71 : Prog (BitVec 64) :=
.decCall ("cost") (Flapjack.Shape.one) ("add_sat") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 375#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.const 375#64, Flapjack.Exp.var Flapjack.VarKind.local "ntopics"]],
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x")]) body525_70

def body525_72 : Prog (BitVec 64) :=
.decCall ("dc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.const 8#64, Flapjack.Exp.var Flapjack.VarKind.local "n"]) body525_71

def body525_73 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("extend_memory_cost1") ([Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "size"]) body525_72

def body525_74 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "size"]) body525_73

def body525_75 : Prog (BitVec 64) :=
.seq body525_2 body525_74

def body525_76 : Prog (BitVec 64) :=
.decCall ("size") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body525_75

def body525_77 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body525_76

def originalData525 : Decl (BitVec 64) :=
.function { name := "op_log", inline := false, exported := false, params := [("ntopics", Flapjack.Shape.one)], body := body525_50, returnShape := (Flapjack.Shape.one) }
def simplifiedData525 : Decl (BitVec 64) :=
.function { name := "op_log", inline := false, exported := false, params := [("ntopics", Flapjack.Shape.one)], body := body525_77, returnShape := (Flapjack.Shape.one) }
def original525 := Pancake.PanLang.declToHOL originalData525
def simplified525 := Pancake.PanLang.declToHOL simplifiedData525
end InitECandidate.Proofs.FrontendStages.Declarations
